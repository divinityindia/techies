(function(){

	//remove private properties
	function sanitize(ev){
		var obj = {};
		for (var key in ev)
			if (key.indexOf("_") !== 0)
				obj[key] = ev[key];

		return obj;
	}

	var update_timer;
	function update_view(){
		clearTimeout(update_timer);
		update_timer = setTimeout(function(){
			scheduler.updateView();
		},1);
	};


scheduler.backbone = function(collection){
	events.bind("reset", function(){
		scheduler.clearAll();
		scheduler.parse(events.toJSON(), "json");
	});
	events.bind("change", function(Model, info){
		//special handling for id change
		if (info.changes && info.changes.id){
			var old_id = Model.previous("id");
			scheduler.changeEventId(old_id, Model.id);
		}

		var id = Model.id;
		scheduler._init_event( scheduler._events[id] = Model.toJSON() );
		update_view();
	});
	events.bind("remove", function(Model, changes){
		if (scheduler._events[Model.id])
			scheduler.deleteEvent(Model.id);
	});
	events.bind("add", function(Model, changes){
		if (!scheduler._events[Model.id]){
			var ev =  Model.toJSON();
			scheduler._init_event(ev); 
			scheduler.addEvent(ev);
		}
	});


	scheduler.attachEvent("onEventCreated", function(id){
		var ev = new events.model(scheduler.getEvent(id));
		scheduler._events[id] = ev.toJSON();

		return true;
	});

	scheduler.attachEvent("onEventAdded", function(id){
		if (!events.get(id))
			events.add( new events.model(sanitize(scheduler.getEvent(id))) );
		
		return true;
	});
	scheduler.attachEvent("onEventChanged", function(id){
		var ev = events.get(id);
		var upd = sanitize(scheduler.getEvent(id));
		ev.set(upd);

		return true;
	});
	scheduler.attachEvent("onEventDeleted", function(id){
		if (events.get(id))
			events.remove(id);
		return true;
	});
}

})();