//branches



//State and City Append

var handles = ["Andaman & Nicobar","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh","Chhattisgarh","Dadra & Nagar Haveli","Daman & Diu","Delhi","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Lakshadweep","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Orissa","Pondicherry","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttaranchal"];

$(function() {
	  var options = '';
	  for (var i = 0; i < handles.length; i++) {
	      options += '<option value="' + handles[i] + '">' + handles[i] + '</option>';
	  }
	  $('#state').append(options);
	  $('#pstate').append(options);
	  
	});

	$(document).on("change", "#state", function(e) {
	$('#city').empty();
	$('#city').append("<option value=''>---Select City---</option>");
	var $this = $(this);
	var $val=$this.val();
	
	
	if($val=='Andaman & Nicobar') {
		   var andman = ["Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita ,Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < andman.length; i++) {
		      options += '<option value="' + andman[i] + '">' + andman[i] + '</option>';
		  }
		  
		  
		  $('#city').append(options);
		  });
		  }
	
	
	
	if($val=='Andhra Pradesh') {
		   var andhra = ["Achampet","Adilabad","Adoni","Alampur","Allagadda","Alur","Amalapuram","Amangallu","Anakapalle","Anantapur","Andole","Araku","Armoor","Asifabad","Aswaraopet","Atmakur","B Kothakota","Badvel","Banaganapalle","Bandar","Bangarupalem","Banswada","Bapatla","Bellampalli","Bhadrachalam","Bhainsa","Bheemunipatnam","Bhimadole","Bhimavaram","Bhongir","Bhooragamphad","Boath","Bobbili","Bodhan","Chandoor","Chavitidibbalu","Chejerla","Chepurupalli","Cherial","Chevella","Chinnor","Chintalapudi","Chintapalle","Chirala","Chittoor","Chodavaram","Cuddapah","Cumbum","Darsi","Devarakonda","Dharmavaram","Dichpalli","Divi","Donakonda","Dronachalam","East Godavari","Eluru","Eturnagaram","Gadwal","Gajapathinagaram","Gajwel","Garladinne","Giddalur","Godavari","Gooty","Gudivada","Gudur","Guntur","Hindupur","Hunsabad","Huzurabad","Huzurnagar","Hyderabad","Ibrahimpatnam","Jaggayyapet","Jagtial","Jammalamadugu","Jangaon","Jangareddygudem","Jannaram","Kadiri","Kaikaluru","Kakinada","Kalwakurthy","Kalyandurg","Kamalapuram","Kamareddy","Kambadur","Kanaganapalle","Kandukuru","Kanigiri","Karimnagar","Kavali","Khammam","Khanapur (AP)","Kodangal","Koduru","Koilkuntla","Kollapur","Kothagudem","Kovvur","Krishna","Krosuru","Kuppam","Kurnool","Lakkireddipalli","Madakasira","Madanapalli","Madhira","Madnur","Mahabubabad","Mahabubnagar","Mahadevapur","Makthal","Mancherial","Mandapeta","Mangalagiri","Manthani","Markapur","Marturu","Medachal","Medak","Medarmetla","Metpalli","Mriyalguda","Mulug","Mylavaram","Nagarkurnool","Nalgonda","Nallacheruvu","Nampalle","Nandigama","Nandikotkur","Nandyal","Narasampet","Narasaraopet","Narayanakhed","Narayanpet","Narsapur","Narsipatnam","Nazvidu","Nelloe","Nellore","Nidamanur","Nirmal","Nizamabad","Nuguru","Ongole","Outsarangapalle","Paderu","Pakala","Palakonda","Paland","Palmaneru","Pamuru","Pargi","Parkal","Parvathipuram","Pathapatnam","Pattikonda","Peapalle","Peddapalli","Peddapuram","Penukonda","Piduguralla","Piler","Pithapuram","Podili","Polavaram","Prakasam","Proddatur","Pulivendla","Punganur","Putturu","Rajahmundri","Rajampeta","Ramachandrapuram","Ramannapet","Rampachodavaram","Rangareddy","Rapur","Rayachoti","Rayadurg","Razole","Repalle","Saluru","Sangareddy","Sathupalli","Sattenapalle","Satyavedu","Shadnagar","Siddavattam","Siddipet","Sileru","Sircilla","Sirpur Kagaznagar","Sodam","Sompeta","Srikakulam","Srikalahasthi","Srisailam","Srungavarapukota","Sudhimalla","Sullarpet","Tadepalligudem","Tadipatri","Tanduru","Tanuku","Tekkali","Tenali","Thungaturthy","Tirivuru","Tirupathi","Tuni","Udaygiri","Ulvapadu","Uravakonda","Utnor","VR Puram","Vaimpalli","Vayalpad","Venkatgiri","Venkatgirikota","Vijayawada","Vikrabad","Vinjamuru","Vinukonda","Visakhapatnam","Vizayanagaram","Vizianagaram","Vuyyuru","Wanaparthy","Warangal","Wardhannapet","Yelamanchili","Yelavaram","Yeleswaram","Yellandu","Yellanuru","Yellareddy","Yerragondapalem","Zahirabad"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < andhra.length; i++) {
		      options += '<option value="' + andhra[i] + '">' + andhra[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Arunachal Pradesh') {
		    var ap = ["Along","Anini","Anjaw","Bameng","Basar","Changlang","Chowkhem","Daporizo","Dibang Valley","Dirang","Hayuliang","Huri","Itanagar","Jairampur","Kalaktung","Kameng","Khonsa","Kolaring","Kurung Kumey","Lohit","Lower Dibang Valley","Lower Subansiri","Mariyang","Mechuka","Miao","Nefra","Pakkekesang","Pangin","Papum Pare","Passighat","Roing","Sagalee","Seppa","Siang","Tali","Taliha","Tawang","Tezu","Tirap","Tuting","Upper Siang","Upper Subansiri","Yiang Kiag"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < ap.length; i++) {
		      options += '<option value="' + ap[i] + '">' + ap[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Assam') {
		    var assam = ["Abhayapuri","Baithalangshu","Barama","Barpeta Road","Bihupuria","Bijni","Bilasipara","Bokajan","Bokakhat","Boko","Bongaigaon","Cachar","Cachar Hills","Darrang","Dhakuakhana","Dhemaji","Dhubri","Dibrugarh","Digboi","Diphu","Goalpara","Gohpur","Golaghat","Guwahati","Hailakandi","Hajo","Halflong","Hojai","Howraghat","Jorhat","Kamrup","Karbi Anglong","Karimganj","Kokarajhar","Kokrajhar","Lakhimpur","Maibong","Majuli","Mangaldoi","Mariani","Marigaon","Moranhat","Morigaon","Nagaon","Nalbari","Rangapara","Sadiya","Sibsagar","Silchar","Sivasagar","Sonitpur","Tarabarihat","Tezpur","Tinsukia","Udalgiri","Udalguri","UdarbondhBarpeta"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < assam.length; i++) {
		      options += '<option value="' + assam[i] + '">' + assam[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Bihar') {
		    var bihar = ["Adhaura","Amarpur","Araria","Areraj","Arrah","Arwal","Aurangabad","Bagaha","Banka","Banmankhi","Barachakia","Barauni","Barh","Barosi","Begusarai","Benipatti","Benipur","Bettiah","Bhabhua","Bhagalpur","Bhojpur","Bidupur","Biharsharif","Bikram","Bikramganj","Birpur","Buxar","Chakai","Champaran","Chapara","Dalsinghsarai","Danapur","Darbhanga","Daudnagar","Dhaka","Dhamdaha","Dumraon","Ekma","Forbesganj","Gaya","Gogri","Gopalganj","HKharagpur","Hajipur","Hathua","Hilsa","Imamganj","Jahanabad","Jainagar","Jamshedpur","Jamui","Jehanabad","Jhajha","Jhanjharpur","Kahalgaon","Kaimur (Bhabua)","Katihar","Katoria","Khagaria","Kishanganj","Korha","Lakhisarai","Madhepura","Madhubani","Maharajganj","Mahua","Mairwa","Mallehpur","Masrakh","Mohania","Monghyr","Motihari","Motipur","Munger","Muzaffarpur","Nabinagar","Nalanda","Narkatiaganj","Naugachia","Nawada","Pakribarwan","Pakridayal","Patna","Phulparas","Piro","Pupri","Purena","Purnia","Rafiganj","Rajauli","Ramnagar","Raniganj","Raxaul","Rohtas","Rosera","SBakhtiarpur","Saharsa","Samastipur","Saran","Sasaram","Seikhpura","Sheikhpura","Sheohar","Sherghati","Sidhawalia","Singhwara","Sitamarhi","Siwan","Sonepur","Supaul","Thakurganj","Triveniganj","Udakishanganj","Vaishali","Wazirganj"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < bihar.length; i++) {
		      options += '<option value="' + bihar[i] + '">' + bihar[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Chandigarh') {
			    var Chandigarh = ["Chandigarh"," Mani Marja"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < Chandigarh.length; i++) {
			      options += '<option value="' + Chandigarh[i] + '">' + Chandigarh[i] + '</option>';
			  }
			  $('#city').append(options);
			  });
			  }
		  
		  
		  if ($val=='Chhattisgarh') {
		    var Chhattisgarh = ["Ambikapur","Antagarh","Arang","Bacheli","Bagbahera","Bagicha","Baikunthpur","Balod","Balodabazar","Balrampur","Barpalli","Basana","Bastanar","Bastar","Bderajpur","Bemetara","Berla","Bhairongarh","Bhanupratappur","Bharathpur","Bhatapara","Bhilai","Bhilaigarh","Bhopalpatnam","Bijapur","Bilaspur","Bodla","Bokaband","Chandipara","Chhinagarh","Chhuriakala","Chingmut","Chuikhadan","Dabhara","Dallirajhara","Dantewada","Deobhog","Dhamda","Dhamtari","Dharamjaigarh","Dongargarh","Durg","Durgakondal","Fingeshwar","Gariaband","Garpa","Gharghoda","Gogunda","Ilamidi","Jagdalpur","Janjgir","Janjgir-Champa","Jarwa","Jashpur","Jashpurnagar","Kabirdham-Kawardha","Kanker","Kasdol","Kathdol","Kathghora","Kawardha","Keskal","Khairgarh","Kondagaon","Konta","Korba","Korea","Kota","Koyelibeda","Kuakunda","Kunkuri","Kurud","Lohadigundah","Lormi","Luckwada","Mahasamund","Makodi","Manendragarh","Manpur","Marwahi","Mohla","Mungeli","Nagri","Narainpur","Narayanpur","Neora","Netanar","Odgi","Padamkot","Pakhanjur","Pali","Pandaria","Pandishankar","Parasgaon","Pasan","Patan","Pathalgaon","Pendra","Pratappur","Premnagar","Raigarh","Raipur","Rajnandgaon","Rajpur","Ramchandrapur","Saraipali","Saranggarh","Sarona","Semaria","Shakti","Sitapur","Sukma","Surajpur","Surguja","Tapkara","Toynar","Udaipur","Uproda","Wadrainagar"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < Chhattisgarh.length; i++) {
		      options += '<option value="' + Chhattisgarh[i] + '">' + Chhattisgarh[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Dadra & Nagar Haveli') {
		    var dadra = ["Amal","Amli","Bedpa","Chikhli","Dadra & Nagar Haveli","Dahikhed","Dolara","Galonda","Kanadi","Karchond","Khadoli","Kharadpada","Kherabari","Kherdi","Kothar","Luari","Mashat","Rakholi","Rudana","Saili","Sili","Silvassa","Sindavni","Udva","Umbarkoi","Vansda","Vasona","Velugam"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < dadra.length; i++) {
		      options += '<option value="' + dadra[i] + '">' + dadra[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Daman and Diu') {
		    var daman = ["Brancavare","Dagasi","Daman","Diu","Magarvara","Nagwa","Pariali","Passo Covo"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < daman.length; i++) {
		      options += '<option value="' + daman[i] + '">' + daman[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Delhi') {
		    var delhi = ["Delhi","New Delhi","North Delhi","Noida","Patparganj","Sonabarsa","Tughlakabad"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < delhi.length; i++) {
		      options += '<option value="' + delhi[i] + '">' + delhi[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Goa') {
		    var goa = ["Canacona","Candolim","Chinchinim","Cortalim","Goa","Jua","Madgaon","Mahem","Mapuca","Marmagao","Panji","Ponda","Sanvordem","Terekhol"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < goa.length; i++) {
		      options += '<option value="' + goa[i] + '">' + goa[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Gujarat') {
		    var gujarat = ["Ahmedabad","Ahwa","Amod","Amreli","Anand","Anjar","Ankaleshwar","Babra","Balasinor","Banaskantha","Bansada","Bardoli","Bareja","Baroda","Barwala","Bayad","Bhachav","Bhanvad","Bharuch","Bhavnagar","Bhiloda","Bhuj","Billimora","Borsad","Botad","Chanasma","Chhota Udaipur","Chotila","Dabhoi","Dahod","Damnagar","Dang","Danta","Dasada","Dediapada","Deesa","Dehgam","Deodar","Devgadhbaria","Dhandhuka","Dhanera","Dharampur","Dhari","Dholka","Dhoraji","Dhrangadhra","Dhrol","Dwarka","Fortsongadh","Gadhada","Gandhi Nagar","Gariadhar","Godhra","Gogodar","Gondal","Halol","Halvad","Harij","Himatnagar","Idar","Jambusar","Jamjodhpur","Jamkalyanpur","Jamnagar","Jasdan","Jetpur","Jhagadia","Jhalod","Jodia","Junagadh","Junagarh","Kalawad","Kalol","Kapad Wanj","Keshod","Khambat","Khambhalia","Khavda","Kheda","Khedbrahma","Kheralu","Kodinar","Kotdasanghani","Kunkawav","Kutch","Kutchmandvi","Kutiyana","Lakhpat","Lakhtar","Lalpur","Limbdi","Limkheda","Lunavada","MMMangrol","Mahuva","Malia-Hatina","Maliya","Malpur","Manavadar","Mandvi","Mangrol","Mehmedabad","Mehsana","Miyagam","Modasa","Morvi","Muli","Mundra","Nadiad","Nakhatrana","Nalia","Narmada","Naswadi","Navasari","Nizar","Okha","Paddhari","Padra","Palanpur","Palitana","Panchmahals","Patan","Pavijetpur","Porbandar","Prantij","Radhanpur","Rahpar","Rajaula","Rajkot","Rajpipla","Ranavav","Sabarkantha","Sanand","Sankheda","Santalpur","Santrampur","Savarkundla","Savli","Sayan","Sayla","Shehra","Sidhpur","Sihor","Sojitra","Sumrasar","Surat","Surendranagar","Talaja","Thara","Tharad","Thasra","Una-Diu","Upleta","Vadgam","Vadodara","Valia","Vallabhipur","Valod","Valsad","Vanthali","Vapi","Vav","Veraval","Vijapur","Viramgam","Visavadar","Visnagar","Vyara","Waghodia","Wankaner"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < gujarat.length; i++) {
		      options += '<option value="' + gujarat[i] + '">' + gujarat[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Haryana') {
		    var haryana = ["Adampur Mandi","Ambala","Assandh","Bahadurgarh","Barara","Barwala","Bawal","Bawanikhera","Bhiwani","Charkhidadri","Cheeka","Chhachrauli","Dabwali","Ellenabad","Faridabad","Fatehabad","Ferojpur Jhirka","Gharaunda","Gohana","Gurgaon","Hansi","Hisar","Jagadhari","Jatusana","Jhajjar","Jind","Julana","Kaithal","Kalanaur","Kalanwali","Kalka","Karnal","Kosli","Kurukshetra","Loharu","Mahendragarh","Meham","Mewat","Mohindergarh","Naraingarh","Narnaul","Narwana","Nilokheri","Nuh","Palwal","Panchkula","Panipat","Pehowa","Ratia","Rewari","Rohtak","Safidon","Sirsa","Siwani","Sonipat","Tohana","Tohsam","Yamunanagar"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < haryana.length; i++) {
		      options += '<option value="' + haryana[i] + '">' + haryana[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Himachal Pradesh') {
		    var himachal = ["Amb","Arki","Banjar","Bharmour","Bilaspur","Chamba","Churah","Dalhousie","Dehra Gopipur","Hamirpur","Jogindernagar","Kalpa","Kangra","Kinnaur","Kullu","Lahaul","Mandi","Nahan","Nalagarh","Nirmand","Nurpur","Palampur","Pangi","Paonta","Pooh","Rajgarh","Rampur Bushahar","Rohru","Shimla","Sirmaur","Solan","Spiti","Sundernagar","Theog","Udaipur","Una"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < himachal.length; i++) {
		      options += '<option value="' + himachal[i] + '">' + himachal[i] + '</option>';
		  }
		 $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Jammu and Kashmir') {
		    var jammu = ["Akhnoor","Anantnag","Badgam","Bandipur","Baramulla","Basholi","Bedarwah","Budgam","Doda","Gulmarg","Jammu","Kalakot","Kargil","Karnah","Kathua","Kishtwar","Kulgam","Kupwara","Leh","Mahore","Nagrota","Nobra","Nowshera","Nyoma","Padam","Pahalgam","Patnitop","Poonch","Pulwama","Rajouri","Ramban","Ramnagar","Reasi","Samba","Srinagar","Udhampur","Vaishno Devi"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < jammu.length; i++) {
		      options += '<option value="' + jammu[i] + '">' + jammu[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Jharkhand') {
		    var jharkhand = ["Bagodar","Baharagora","Balumath","Barhi","Barkagaon","Barwadih","Basia","Bermo","Bhandaria","Bhawanathpur","Bishrampur","Bokaro","Bolwa","Bundu","Chaibasa","Chainpur","Chakardharpur","Chandil","Chatra","Chavparan","Daltonganj","Deoghar","Dhanbad","Dumka","Dumri","Garhwa","Garu","Ghaghra","Ghatsila","Giridih","Godda","Gomia","Govindpur","Gumla","Hazaribagh","Hunterganj","Ichak","Itki","Jagarnathpur","Jamshedpur","Jamtara","Japla","Jharmundi","Jhinkpani","Jhumaritalaiya","Kathikund","Kharsawa","Khunti","Koderma","Kolebira","Latehar","Lohardaga","Madhupur","Mahagama","Maheshpur Raj","Mandar","Mandu","Manoharpur","Muri","Nagarutatri","Nala","Noamundi","Pakur","Palamu","Palkot","Patan","Rajdhanwar","Rajmahal","Ramgarh","Ranchi","Sahibganj","Saraikela","Simaria","Simdega","Singhbhum","Tisri","Torpa"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < jharkhand.length; i++) {
		      options += '<option value="' + jharkhand[i] + '">' + jharkhand[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Karnataka') {
		    var karnataka = ["Afzalpur","Ainapur","Aland","Alur","Anekal","Ankola","Arsikere","Athani","Aurad","Bableshwar","Badami","Bagalkot","Bagepalli","Bailhongal","Bangalore","Bangalore Rural","Bangarpet","Bantwal","Basavakalyan","Basavanabagewadi","Basavapatna","Belgaum","Bellary","Belthangady","Belur","Bhadravati","Bhalki","Bhatkal","Bidar","Bijapur","Biligi","Chadchan","Challakere","Chamrajnagar","Channagiri","Channapatna","Channarayapatna","Chickmagalur","Chikballapur","Chikkaballapur","Chikkanayakanahalli","Chikkodi","Chikmagalur","Chincholi","Chintamani","Chitradurga","Chittapur","Cowdahalli","Davanagere","Deodurga","Devangere","Devarahippargi","Dharwad","Doddaballapur","Gadag","Gangavathi","Gokak","Gowribdanpur","Gubbi","Gulbarga","Gundlupet","HBHalli","HD Kote","Haliyal","Hampi","Hangal","Harapanahalli","Hassan","Haveri","Hebri","Hirekerur","Hiriyur","Holalkere","Holenarsipur","Honnali","Honnavar","Hosadurga","Hosakote","Hosanagara","Hospet","Hubli","Hukkeri","Humnabad","Hungund","Hunsagi","Hunsur","Huvinahadagali","Indi","Jagalur","Jamkhandi","Jewargi","Joida","KR Nagar","Kadur","Kalghatagi","Kamalapur","Kanakapura","Kannada","Kargal","Karkala","Karwar","Khanapur","Kodagu","Kolar","Kollegal","Koppa","Koppal","Koratageri","Krishnarajapet","Kudligi","Kumta","Kundapur","Kundgol","Kunigal","Kurugodu","Kustagi","Lingsugur","Madikeri","Madugiri","Malavalli","Malur","Mandya","Mangalore","Manipal","Manvi","Mashal","Molkalmuru","Mudalgi","Muddebihal","Mudhol","Mudigere","Mulbagal","Mundagod","Mundargi","Murugod","Mysore","Nagamangala","Nanjangud","Nargund","Narsimrajapur","Navalgund","Nelamangala","Nimburga","Pandavapura","Pavagada","Puttur","Raibag","Raichur","Ramdurg","Ranebennur","Ron","Sagar","Sakleshpur","Salkani","Sandur","Saundatti","Savanur","Sedam","Shahapur","Shankarnarayana","Shikaripura","Shimoga","Shirahatti","Shorapur","Siddapur","Sidlaghatta","Sindagi","Sindhanur","Sira","Sirsi","Siruguppa","Somwarpet","Sorab","Sringeri","Sriniwaspur","Srirangapatna","Sullia","T Narsipur","Tallak","Tarikere","Telgi","Thirthahalli","Tiptur","Tumkur","Turuvekere","Udupi","Virajpet","Wadi","Yadgiri","Yelburga","Yellapur"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < karnataka.length; i++) {
		      options += '<option value="' + karnataka[i] + '">' + karnataka[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Kerala') {
		    var kerala = ["Adimaly","Adoor","Agathy","Alappuzha","Alathur","Alleppey","Alwaye","Amini","Androth","Attingal","Badagara","Bitra","Calicut","Cannanore","Chetlet","Ernakulam","Idukki","Irinjalakuda","Kadamath","Kalpeni","Kalpetta","Kanhangad","Kanjirapally","Kannur","Karungapally","Kasargode","Kavarathy","Kiltan","Kochi","Koduvayur","Kollam","Kottayam","Kovalam","Kozhikode","Kunnamkulam","Malappuram","Mananthodi","Manjeri","Mannarghat","Mavelikkara","Minicoy","Munnar","Muvattupuzha","Nedumandad","Nedumgandam","Nilambur","Palai","Palakkad","Palghat","Pathaanamthitta","Pathanamthitta","Payyanur","Peermedu","Perinthalmanna","Perumbavoor","Punalur","Quilon","Ranni","Shertallai","Shoranur","Taliparamba","Tellicherry","Thiruvananthapuram","Thodupuzha","Thrissur","Tirur","Tiruvalla","Trichur","Trivandrum","Uppala","Vadakkanchery","Vikom","Wayanad"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < kerala.length; i++) {
		      options += '<option value="' + kerala[i] + '">' + kerala[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Lakshadweep') {
			    var Lakshadweep = ["Agatti Island","Bingaram Island","Bitra Island","Chetlat Island","Kadmat Island","Kalpeni Island","Kavaratti Island","Kiltan Island","Lakshadweep Sea","Minicoy Island","North Island","South Island"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < Lakshadweep.length; i++) {
			      options += '<option value="' + Lakshadweep[i] + '">' + Lakshadweep[i] + '</option>';
			  }
			  $('#city').append(options);
			  });
			  }
		  
		  if ($val=='Madhya Pradesh') {
		    var mp = ["Agar","Ajaigarh","Alirajpur","Amarpatan","Amarwada","Ambah","Anuppur","Arone","Ashoknagar","Ashta","Atner","Babaichichli","Badamalhera","Badarwsas","Badnagar","Badnawar","Badwani","Bagli","Baihar","Balaghat","Baldeogarh","Baldi","Bamori","Banda","Bandhavgarh","Bareli","Baroda","Barwaha","Barwani","Batkakhapa","Begamganj","Beohari","Berasia","Berchha","Betul","Bhainsdehi","Bhander","Bhanpura","Bhikangaon","Bhimpur","Bhind","Bhitarwar","Bhopal","Biaora","Bijadandi","Bijawar","Bijaypur","Bina","Birsa","Birsinghpur","Budhni","Burhanpur","Buxwaha","Chachaura","Chanderi","Chaurai","Chhapara","Chhatarpur","Chhindwara","Chicholi","Chitrangi","Churhat","Dabra","Damoh","Datia","Deori","Deosar","Depalpur","Dewas","Dhar","Dharampuri","Dindori","Gadarwara","Gairatganj","Ganjbasoda","Garoth","Ghansour","Ghatia","Ghatigaon","Ghorandogri","Ghughari","Gogaon","Gohad","Goharganj","Gopalganj","Gotegaon","Gourihar","Guna","Gunnore","Gwalior","Gyraspur","Hanumana","Harda","Harrai","Harsud","Hatta","Hoshangabad","Ichhawar","Indore","Isagarh","Itarsi","Jabalpur","Jabera","Jagdalpur","Jaisinghnagar","Jaithari","Jaitpur","Jaitwara","Jamai","Jaora","Jatara","Jawad","Jhabua","Jobat","Jora","Kakaiya","Kannod","Kannodi","Karanjia","Kareli","Karera","Karhal","Karpa","Kasrawad","Katangi","Katni","Keolari","Khachrod","Khajuraho","Khakner","Khalwa","Khandwa","Khaniadhana","Khargone","Khategaon","Khetia","Khilchipur","Khirkiya","Khurai","Kolaras","Kotma","Kukshi","Kundam","Kurwai","Kusmi","Laher","Lakhnadon","Lamta","Lanji","Lateri","Laundi","Maheshwar","Mahidpurcity","Maihar","Majhagwan","Majholi","Malhargarh","Manasa","Manawar","Mandla","Mandsaur","Manpur","Mauganj","Mawai","Mehgaon","Mhow","Morena","Multai","Mungaoli","Nagod","Nainpur","Narsingarh","Narsinghpur","Narwar","Nasrullaganj","Nateran","Neemuch","Niwari","Niwas","Nowgaon","Pachmarhi","Pandhana","Pandhurna","Panna","Parasia","Patan","Patera","Patharia","Pawai","Petlawad","Pichhore","Piparia","Pohari","Prabhapattan","Punasa","Pushprajgarh","Raghogarh","Raghunathpur","Rahatgarh","Raisen","Rajgarh","Rajpur","Ratlam","Rehli","Rewa","Sabalgarh","Sagar","Sailana","Sanwer","Sarangpur","Sardarpur","Satna","Saunsar","Sehore","Sendhwa","Seondha","Seoni","Seonimalwa","Shahdol","Shahnagar","Shahpur","Shajapur","Sheopur","Sheopurkalan","Shivpuri","Shujalpur","Sidhi","Sihora","Silwani","Singrauli","Sirmour","Sironj","Sitamau","Sohagpur","Sondhwa","Sonkatch","Susner","Tamia","Tarana","Tendukheda","Teonthar","Thandla","Tikamgarh","Timarani","Udaipura","Ujjain","Umaria","Umariapan","Vidisha","Vijayraghogarh","Waraseoni","Zhirnia"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < mp.length; i++) {
		      options += '<option value="' + mp[i] + '">' + mp[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Maharashtra') {
		    var maharashtra = ["Achalpur","Aheri","Ahmednagar","Ahmedpur","Ajara","Akkalkot","Akola","Akole","Akot","Alibagh","Amagaon","Amalner","Ambad","Ambejogai","Amravati","Arjuni Merogaon","Arvi","Ashti","Atpadi","Aurangabad","Ausa","Babhulgaon","Balapur","Baramati","Barshi Takli","Barsi","Basmatnagar","Bassein","Beed","Bhadrawati","Bhamregadh","Bhandara","Bhir","Bhiwandi","Bhiwapur","Bhokar","Bhokardan","Bhoom","Bhor","Bhudargad","Bhusawal","Billoli","Brahmapuri","Buldhana","Butibori","Chalisgaon","Chamorshi","Chandgad","Chandrapur","Chandur","Chanwad","Chhikaldara","Chikhali","Chinchwad","Chiplun","Chopda","Chumur","Dahanu","Dapoli","Darwaha","Daryapur","Daund","Degloor","Delhi Tanda","Deogad","Deolgaonraja","Deori","Desaiganj","Dhadgaon","Dhanora","Dharani","Dhiwadi","Dhule","Dhulia","Digras","Dindori","Edalabad","Erandul","Etapalli","Gadhchiroli","Gadhinglaj","Gaganbavada","Gangakhed","Gangapur","Gevrai","Ghatanji","Golegaon","Gondia","Gondpipri","Goregaon","Guhagar","Hadgaon","Hatkangale","Hinganghat","Hingoli","Hingua","Igatpuri","Indapur","Islampur","Jalgaon","Jalna","Jamkhed","Jamner","Jath","Jawahar","Jintdor","Junnar","Kagal","Kaij","Kalamb","Kalamnuri","Kallam","Kalmeshwar","Kalwan","Kalyan","Kamptee","Kandhar","Kankavali","Kannad","Karad","Karjat","Karmala","Katol","Kavathemankal","Kedgaon","Khadakwasala","Khamgaon","Khed","Khopoli","Khultabad","Kinwat","Kolhapur","Kopargaon","Koregaon","Kudal","Kuhi","Kurkheda","Kusumba","Lakhandur","Langa","Latur","Lonar","Lonavala","Madangad","Madha","Mahabaleshwar","Mahad","Mahagaon","Mahasala","Mahaswad","Malegaon","Malgaon","Malgund","Malkapur","Malsuras","Malwan","Mancher","Mangalwedha","Mangaon","Mangrulpur","Manjalegaon","Manmad","Maregaon","Mehda","Mekhar","Mohadi","Mohol","Mokhada","Morshi","Mouda","Mukhed","Mul","Mumbai","Murbad","Murtizapur","Murud","Nagbhir","Nagpur","Nahavara","Nanded","Nandgaon","Nandnva","Nandurbar","Narkhed","Nashik","Navapur","Ner","Newasa","Nilanga","Niphad","Omerga","Osmanabad","Pachora","Paithan","Palghar","Pali","Pandharkawada","Pandharpur","Panhala","Paranda","Parbhani","Parner","Parola","Parseoni","Partur","Patan","Pathardi","Pathari","Patoda","Pauni","Peint","Pen","Phaltan","Pimpalner","Pirangut","Poladpur","Pune","Pusad","Pusegaon","Radhanagar","Rahuri","Raigad","Rajapur","Rajgurunagar","Rajura","Ralegaon","Ramtek","Ratnagiri","Raver","Risod","Roha","Sakarwadi","Sakoli","Sakri","Salekasa","Samudrapur","Sangamner","Sanganeshwar","Sangli","Sangola","Sanguem","Saoner","Saswad","Satana","Satara","Sawantwadi","Seloo","Shahada","Shahapur","Shahuwadi","Shevgaon","Shirala","Shirol","Shirpur","Shirur","Shirwal","Sholapur","Shri Rampur","Shrigonda","Shrivardhan","Sillod","Sinderwahi","Sindhudurg","Sindkheda","Sindkhedaraja","Sinnar","Sironcha","Soyegaon","Surgena","Talasari","Talegaon SJi Pant","Taloda","Tasgaon","Thane","Tirora","Tiwasa","Trimbak","Tuljapur","Tumsar","Udgir","Umarkhed","Umrane","Umrer","Urlikanchan","Vaduj","Velhe","Vengurla","Vijapur","Vita","Wada","Wai","Walchandnagar","Wani","Wardha","Warlydwarud","Warora","Washim","Wathar","Yavatmal","Yawal","Yeola","Yeotmal"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < maharashtra.length; i++) {
		      options += '<option value="' + maharashtra[i] + '">' + maharashtra[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		   if ($val=='Manipur') {
		    var manipur = ["Bishnupur","Chakpikarong","Chandel","Chattrik","Churachandpur","Imphal","Jiribam","Kakching","Kalapahar","Mao","Mulam","Parbung","Sadarhills","Saibom","Sempang","Senapati","Sochumer","Taloulong","Tamenglong","Thinghat","Thoubal","Ukhrul"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < manipur.length; i++) {
		      options += '<option value="' + manipur[i] + '">' + manipur[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		   if ($val=='Meghalaya') {
		    var meghalaya = ["Amlaren","Baghmara","Cherrapunjee","Dadengiri","Garo Hills","Jaintia Hills","Jowai","Khasi Hills","Khliehriat","Mariang","Mawkyrwat","Nongpoh","Nongstoin","Resubelpara","Ri Bhoi","Shillong","Tura","Williamnagar"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < meghalaya.length; i++) {
		      options += '<option value="' + meghalaya[i] + '">' + meghalaya[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		   if ($val=='Mizoram') {
		    var mizoram = ["Aizawl","Champhai","Demagiri","Kolasib","Lawngtlai","Lunglei","Mamit","Saiha","Serchhip"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < mizoram.length; i++) {
		      options += '<option value="' + mizoram[i] + '">' + mizoram[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		   if ($val=='Nagaland') {
		    var nagaland = ["Dimapur","Jalukie","Kiphire","Kohima","Mokokchung","Mon","Phek","Tuensang","Wokha","Zunheboto"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < nagaland.length; i++) {
		      options += '<option value="' + nagaland[i] + '">' + nagaland[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Orissa') {
		    var orissa = ["Anandapur","Angul","Anugul","Aska","Athgarh","Athmallik","Attabira","Bagdihi","Balangir","Balasore","Baleswar","Baliguda","Balugaon","Banaigarh","Bangiriposi","Barbil","Bargarh","Baripada","Barkot","Basta","Berhampur","Betanati","Bhadrak","Bhanjanagar","Bhawanipatna","Bhubaneswar","Birmaharajpur","Bisam Cuttack","Boriguma","Boudh","Buguda","Chandbali","Chhatrapur","Chhendipada","Cuttack","Daringbadi","Daspalla","Deodgarh","Deogarh","Dhanmandal","Dharamgarh","Dhenkanal","Digapahandi","Dunguripali","G Udayagiri","Gajapati","Ganjam","Ghatgaon","Gudari","Gunupur","Hemgiri","Hindol","Jagatsinghapur","Jajpur","Jamankira","Jashipur","Jayapatna","Jeypur","Jharigan","Jharsuguda","Jujumura","Kalahandi","Kalimela","Kamakhyanagar","Kandhamal","Kantabhanji","Kantamal","Karanjia","Kashipur","Kendrapara","Kendujhar","Keonjhar","Khalikote","Khordha","Khurda","Komana","Koraput","Kotagarh","Kuchinda","Lahunipara","Laxmipur","M Rampur","Malkangiri","Mathili","Mayurbhanj","Mohana","Motu","Nabarangapur","Naktideul","Nandapur","Narlaroad","Narsinghpur","Nayagarh","Nimapara","Nowparatan","Nowrangapur","Nuapada","Padampur","Paikamal","Palla Hara","Papadhandi","Parajang","Pardip","Parlakhemundi","Patnagarh","Pattamundai","Phiringia","Phulbani","Puri","Puruna Katak","R Udayigiri","Rairakhol","Rairangpur","Rajgangpur","Rajkhariar","Rayagada","Rourkela","Sambalpur","Sohela","Sonapur","Soro","Subarnapur","Sunabeda","Sundergarh","Surada","T Rampur","Talcher","Telkoi","Titlagarh","Tumudibandha","Udala","Umerkote"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < orissa.length; i++) {
		      options += '<option value="' + orissa[i] + '">' + orissa[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Pondicherry') {
			    var Pondicherry = ["Bahur","Karaikal","Mahe","Pondicherry","Purnankuppam","Valudavur","Villianur","Yanam"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < Pondicherry.length; i++) {
			      options += '<option value="' + Pondicherry[i] + '">' + Pondicherry[i] + '</option>';
			  }
			  $('#city').append(options);
			  });
			  }
		  
		  
		  
		  if ($val=='Punjab') {
		    var punjab = ["Abohar","Ajnala","Amritsar","Balachaur","Barnala","Batala","Bathinda","Chandigarh","Dasua","Dinanagar","Faridkot","Fatehgarh Sahib","Fazilka","Ferozepur","Garhashanker","Goindwal","Gurdaspur","Guruharsahai","Hoshiarpur","Jagraon","Jalandhar","Jugial","Kapurthala","Kharar","Kotkapura","Ludhiana","Malaut","Malerkotla","Mansa","Moga","Muktasar","Nabha","Nakodar","Nangal","Nawanshahar","Nawanshahr","Pathankot","Patiala","Patti","Phagwara","Phillaur","Phulmandi","Quadian","Rajpura","Raman","Rayya","Ropar","Rupnagar","Samana","Samrala","Sangrur","Sardulgarh","Sarhind","SAS Nagar","Sultanpur Lodhi","Sunam","Tanda Urmar","Taran Taran","Zira"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < punjab.length; i++) {
		      options += '<option value="' + punjab[i] + '">' + napunjabgaland[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Rajasthan') {
		    var rajasthan = ["Abu Road","Ahore","Ajmer","Aklera","Alwar","Amber","Amet","Anupgarh","Asind","Aspur","Atru","Bagidora","Bali","Bamanwas","Banera","Bansur","Banswara","Baran","Bari","Barisadri","Barmer","Baseri","Bassi","Baswa","Bayana","Beawar","Begun","Behror","Bhadra","Bharatpur","Bhilwara","Bhim","Bhinmal","Bikaner","Bilara","Bundi","Chhabra","Chhipaborad","Chirawa","Chittorgarh","Chohtan","Churu","Dantaramgarh","Dausa","Deedwana","Deeg","Degana","Deogarh","Deoli","Desuri","Dhariawad","Dholpur","Digod","Dudu","Dungarpur","Dungla","Fatehpur","Gangapur","Gangdhar","Gerhi","Ghatol","Girwa","Gogunda","Hanumangarh","Hindaun","Hindoli","Hurda","Jahazpur","Jaipur","Jaisalmer","Jalore","Jhalawar","Jhunjhunu","Jodhpur","Kaman","Kapasan","Karauli","Kekri","Keshoraipatan","Khandar","Kherwara","Khetri","Kishanganj","Kishangarh","Kishangarhbas","Kolayat","Kota","Kotputli","Kotra","Kotri","Kumbalgarh","Kushalgarh","Ladnun","Ladpura","Lalsot","Laxmangarh","Lunkaransar","Mahuwa","Malpura","Malvi","Mandal","Mandalgarh","Mandawar","Mangrol","Marwar-Jn","Merta","Nadbai","Nagaur","Nainwa","Nasirabad","Nathdwara","Nawa","Neem Ka Thana","Newai","Nimbahera","Nohar","Nokha","Onli","Osian","Pachpadara","Pachpahar","Padampur","Pali","Parbatsar","Phagi","Phalodi","Pilani","Pindwara","Pipalda","Pirawa","Pokaran","Pratapgarh","Raipur","Raisinghnagar","Rajgarh","Rajsamand","Ramganj Mandi","Ramgarh","Rashmi","Ratangarh","Reodar","Rupbas","Sadulshahar","Sagwara","Sahabad","Salumber","Sanchore","Sangaria","Sangod","Sapotra","Sarada","Sardarshahar","Sarwar","Sawai Madhopur","Shahapura","Sheo","Sheoganj","Shergarh","Sikar","Sirohi","Siwana","Sojat","Sri Dungargarh","Sri Ganganagar","Sri Karanpur","Sri Madhopur","Sujangarh","Taranagar","Thanaghazi","Tibbi","Tijara","Todaraisingh","Tonk","Udaipur","Udaipurwati","Uniayara","Vallabhnagar","Viratnagar"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < rajasthan.length; i++) {
		      options += '<option value="' + rajasthan[i] + '">' + rajasthan[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  if ($val=='Sikkim') {
		    var sikkim = ["Barmiak","Be","Bhurtuk","Chhubakha","Chidam","Chubha","Chumikteng","Dentam","Dikchu","Dzongri","Gangtok","Gauzing","Gyalshing","Hema","Kerung","Lachen","Lachung","Lema","Lingtam","Lungthu","Mangan","Namchi","Namthang","Nanga","Nantang","Naya Bazar","Padamachen","Pakhyong","Pemayangtse","Phensang","Rangli","Rinchingpong","Sakyong","Samdong","Singtam","Siniolchu","Sombari","Soreng","Sosing","Tekhug","Temi","Tsetang","Tsomgo","Tumlong","Yangang","Yumtang"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < sikkim.length; i++) {
		      options += '<option value="' + sikkim[i] + '">' + sikkim[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Tamil Nadu') {
		    var tn = ["Ambasamudram","Anamali","Arakandanallur","Arantangi","Aravakurichi","Ariyalur","Arkonam","Arni","Aruppukottai","Attur","Avanashi","Batlagundu","Bhavani","Chengalpattu","Chengam","Chennai","Chidambaram","Chingleput","Coimbatore","Courtallam","Cuddalore","Cumbum","Denkanikoitah","Devakottai","Dharampuram","Dharmapuri","Dindigul","Erode","Gingee","Gobichettipalayam","Gudalur","Gudiyatham","Harur","Hosur","Jayamkondan","Kallkurichi","Kanchipuram","Kangayam","Kanyakumari","Karaikal","Karaikudi","Karur","Keeranur","Kodaikanal","Kodumudi","Kotagiri","Kovilpatti","Krishnagiri","Kulithalai","Kumbakonam","Kuzhithurai","Madurai","Madurantgam","Manamadurai","Manaparai","Mannargudi","Mayiladuthurai","Mayiladutjurai","Mettupalayam","Metturdam","Mudukulathur","Mulanur","Musiri","Nagapattinam","Nagarcoil","Namakkal","Nanguneri","Natham","Neyveli","Nilgiris","Oddanchatram","Omalpur","Ootacamund","Ooty","Orathanad","Palacode","Palani","Palladum","Papanasam","Paramakudi","Pattukottai","Perambalur","Perundurai","Pollachi","Polur","Pondicherry","Ponnamaravathi","Ponneri","Pudukkottai","Rajapalayam","Ramanathapuram","Rameshwaram","Ranipet","Rasipuram","Salem","Sankagiri","Sankaran","Sathiyamangalam","Sivaganga","Sivakasi","Sriperumpudur","Srivaikundam","Tenkasi","Thanjavur","Theni","Thirumanglam","Thiruraipoondi","Thoothukudi","Thuraiyure","Tindivanam","Tiruchendur","Tiruchengode","Tiruchirappalli","Tirunelvelli","Tirupathur","Tirupur","Tiruttani","Tiruvallur","Tiruvannamalai","Tiruvarur","Tiruvellore","Tiruvettipuram","Trichy","Tuticorin","Udumalpet","Ulundurpet","Usiliampatti","Uthangarai","Valapady","Valliyoor","Vaniyambadi","Vedasandur","Vellore","Velur","Vilathikulam","Villupuram","Virudhachalam","Virudhunagar","Wandiwash","Yercaud"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < tn.length; i++) {
		      options += '<option value="' + tn[i] + '">' + tn[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Telangana') {
		    var telangana = ["Adilabad","Hyderabad","Karimnagar","Mahbubnagar","Medak","Nalgonda","Nizamabad","Ranga Reddy","Warangal"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < telangana.length; i++) {
		      options += '<option value="' + telangana[i] + '">' + telangana[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Tripura') {
		    var tripura = ["Agartala","Ambasa","Bampurbari","Belonia","Dhalai","Dharam Nagar","Kailashahar","Kamal Krishnabari","Khopaiyapara","Khowai","Phuldungsei","Radha Kishore Pur","Tripura"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < tripura.length; i++) {
		      options += '<option value="' + tripura[i] + '">' + tripura[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Uttar Pradesh') {
		    var up = ["Achhnera","Agra","Akbarpur","Aliganj","Aligarh","Allahabad","Ambedkar Nagar","Amethi","Amiliya","Amroha","Anola","Atrauli","Auraiya","Azamgarh","Baberu","Badaun","Baghpat","Bagpat","Baheri","Bahraich","Ballia","Balrampur","Banda","Bansdeeh","Bansgaon","Bansi","Barabanki","Bareilly","Basti","Bhadohi","Bharthana","Bharwari","Bhogaon","Bhognipur","Bidhuna","Bijnore","Bikapur","Bilari","Bilgram","Bilhaur","Bindki","Bisalpur","Bisauli","Biswan","Budaun","Budhana","Bulandshahar","Bulandshahr","Capianganj","Chakia","Chandauli","Charkhari","Chhata","Chhibramau","Chirgaon","Chitrakoot","Chunur","Dadri","Dalmau","Dataganj","Debai","Deoband","Deoria","Derapur","Dhampur","Domariyaganj","Dudhi","Etah","Etawah","Faizabad","Farrukhabad","Fatehpur","Firozabad","Garauth","Garhmukteshwar","Gautam Buddha Nagar","Ghatampur","Ghaziabad","Ghazipur","Ghosi","Gonda","Gorakhpur","Gunnaur","Haidergarh","Hamirpur","Hapur","Hardoi","Harraiya","Hasanganj","Hasanpur","Hathras","Jalalabad","Jalaun","Jalesar","Jansath","Jarar","Jasrana","Jaunpur","Jhansi","Jyotiba Phule Nagar","Kadipur","Kaimganj","Kairana","Kaisarganj","Kalpi","Kannauj","Kanpur","Karchhana","Karhal","Karvi","Kasganj","Kaushambi","Kerakat","Khaga","Khair","Khalilabad","Kheri","Konch","Kumaon","Kunda","Kushinagar","Lalganj","Lalitpur","Lucknow","Machlishahar","Maharajganj","Mahoba","Mainpuri","Malihabad","Mariyahu","Math","Mathura","Mau","Maudaha","Maunathbhanjan","Mauranipur","Mawana","Meerut","Mehraun","Meja","Mirzapur","Misrikh","Modinagar","Mohamdabad","Mohamdi","Moradabad","Musafirkhana","Muzaffarnagar","Nagina","Najibabad","Nakur","Nanpara","Naraini","Naugarh","Nawabganj","Nighasan","Noida","Orai","Padrauna","Pahasu","Patti","Pharenda","Phoolpur","Phulpur","Pilibhit","Pitamberpur","Powayan","Pratapgarh","Puranpur","Purwa","Raibareli","Rampur","Ramsanehi Ghat","Rasara","Rath","Robertsganj","Sadabad","Safipur","Sagri","Saharanpur","Sahaswan","Sahjahanpur","Saidpur","Salempur","Salon","Sambhal","Sandila","Sant Kabir Nagar","Sant Ravidas Nagar","Sardhana","Shahabad","Shahganj","Shahjahanpur","Shikohabad","Shravasti","Siddharthnagar","Sidhauli","Sikandra Rao","Sikandrabad","Sitapur","Siyana","Sonbhadra","Soraon","Sultanpur","Tanda","Tarabganj","Tilhar","Unnao","Utraula","Varanasi","Zamania"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < up.length; i++) {
		      options += '<option value="' + up[i] + '">' + up[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='Uttaranchal') {
		    var uttarakhand = ["Almora","Bageshwar","Bhatwari","Chakrata","Chamoli","Champawat","Dehradun","Deoprayag","Dharchula","Dunda","Haldwani","Haridwar","Joshimath","Karan Prayag","Kashipur","Khatima","Kichha","Lansdown","Munsiari","Mussoorie","Nainital","Pantnagar","Partapnagar","Pauri Garhwal","Pithoragarh","Purola","Rajgarh","Ranikhet","Roorkee","Rudraprayag","Tehri Garhwal","Udham Singh Nagar","Ukhimath","Uttarkashi"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < uttarakhand.length; i++) {
		      options += '<option value="' + uttarakhand[i] + '">' + uttarakhand[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
		  
		  
		  if ($val=='West Bengal') {
		    var wb = ["Adra","Alipurduar","Amlagora","Arambagh","Asansol","Balurghat","Bankura","Bardhaman","Basirhat","Berhampur","Bethuadahari","Birbhum","Birpara","Bishanpur","Bolpur","Bongoan","Bulbulchandi","Burdwan","Calcutta","Canning","Champadanga","Contai","Cooch Behar","Daimond Harbour","Dalkhola","Dantan","Darjeeling","Dhaniakhali","Dhuliyan","Dinajpur","Dinhata","Durgapur","Gangajalghati","Gangarampur","Ghatal","Guskara","Habra","Haldia","Harirampur","Harishchandrapur","Hooghly","Howrah","Islampur","Jagatballavpur","Jalpaiguri","Jhalda","Jhargram","Kakdwip","Kalchini","Kalimpong","Kalna","Kandi","Karimpur","Katwa","Kharagpur","Khatra","Krishnanagar","Mal Bazar","Malda","Manbazar","Mathabhanga","Medinipur","Mekhliganj","Mirzapur","Murshidabad","Nadia","Nagarakata","Nalhati","Nayagarh","Parganas","Purulia","Raiganj","Rampur Hat","Ranaghat","Seharabazar","Siliguri","Suri","Takipur","Tamluk"];
		   $(function() {
		  var options = '';
		  for (var i = 0; i < wb.length; i++) {
		      options += '<option value="' + wb[i] + '">' + wb[i] + '</option>';
		  }
		  $('#city').append(options);
		  });
		  }
	   
});
	
	
	$(document).on("change", "#pstate", function(e) {
		$('#pcity').empty();
		$('#pcity').append("<option value=''>---Select City---</option>");
		var $this = $(this);
		var $val=$this.val();
		
		
		if($val=='Andaman & Nicobar') {
			   var andman = ["Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita ,Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < andman.length; i++) {
			      options += '<option value="' + andman[i] + '">' + andman[i] + '</option>';
			  }
			  
			  
			  $('#pcity').append(options);
			  });
			  }
		
		
		
		if($val=='Andhra Pradesh') {
			   var andhra = ["Achampet","Adilabad","Adoni","Alampur","Allagadda","Alur","Amalapuram","Amangallu","Anakapalle","Anantapur","Andole","Araku","Armoor","Asifabad","Aswaraopet","Atmakur","B Kothakota","Badvel","Banaganapalle","Bandar","Bangarupalem","Banswada","Bapatla","Bellampalli","Bhadrachalam","Bhainsa","Bheemunipatnam","Bhimadole","Bhimavaram","Bhongir","Bhooragamphad","Boath","Bobbili","Bodhan","Chandoor","Chavitidibbalu","Chejerla","Chepurupalli","Cherial","Chevella","Chinnor","Chintalapudi","Chintapalle","Chirala","Chittoor","Chodavaram","Cuddapah","Cumbum","Darsi","Devarakonda","Dharmavaram","Dichpalli","Divi","Donakonda","Dronachalam","East Godavari","Eluru","Eturnagaram","Gadwal","Gajapathinagaram","Gajwel","Garladinne","Giddalur","Godavari","Gooty","Gudivada","Gudur","Guntur","Hindupur","Hunsabad","Huzurabad","Huzurnagar","Hyderabad","Ibrahimpatnam","Jaggayyapet","Jagtial","Jammalamadugu","Jangaon","Jangareddygudem","Jannaram","Kadiri","Kaikaluru","Kakinada","Kalwakurthy","Kalyandurg","Kamalapuram","Kamareddy","Kambadur","Kanaganapalle","Kandukuru","Kanigiri","Karimnagar","Kavali","Khammam","Khanapur (AP)","Kodangal","Koduru","Koilkuntla","Kollapur","Kothagudem","Kovvur","Krishna","Krosuru","Kuppam","Kurnool","Lakkireddipalli","Madakasira","Madanapalli","Madhira","Madnur","Mahabubabad","Mahabubnagar","Mahadevapur","Makthal","Mancherial","Mandapeta","Mangalagiri","Manthani","Markapur","Marturu","Medachal","Medak","Medarmetla","Metpalli","Mriyalguda","Mulug","Mylavaram","Nagarkurnool","Nalgonda","Nallacheruvu","Nampalle","Nandigama","Nandikotkur","Nandyal","Narasampet","Narasaraopet","Narayanakhed","Narayanpet","Narsapur","Narsipatnam","Nazvidu","Nelloe","Nellore","Nidamanur","Nirmal","Nizamabad","Nuguru","Ongole","Outsarangapalle","Paderu","Pakala","Palakonda","Paland","Palmaneru","Pamuru","Pargi","Parkal","Parvathipuram","Pathapatnam","Pattikonda","Peapalle","Peddapalli","Peddapuram","Penukonda","Piduguralla","Piler","Pithapuram","Podili","Polavaram","Prakasam","Proddatur","Pulivendla","Punganur","Putturu","Rajahmundri","Rajampeta","Ramachandrapuram","Ramannapet","Rampachodavaram","Rangareddy","Rapur","Rayachoti","Rayadurg","Razole","Repalle","Saluru","Sangareddy","Sathupalli","Sattenapalle","Satyavedu","Shadnagar","Siddavattam","Siddipet","Sileru","Sircilla","Sirpur Kagaznagar","Sodam","Sompeta","Srikakulam","Srikalahasthi","Srisailam","Srungavarapukota","Sudhimalla","Sullarpet","Tadepalligudem","Tadipatri","Tanduru","Tanuku","Tekkali","Tenali","Thungaturthy","Tirivuru","Tirupathi","Tuni","Udaygiri","Ulvapadu","Uravakonda","Utnor","VR Puram","Vaimpalli","Vayalpad","Venkatgiri","Venkatgirikota","Vijayawada","Vikrabad","Vinjamuru","Vinukonda","Visakhapatnam","Vizayanagaram","Vizianagaram","Vuyyuru","Wanaparthy","Warangal","Wardhannapet","Yelamanchili","Yelavaram","Yeleswaram","Yellandu","Yellanuru","Yellareddy","Yerragondapalem","Zahirabad"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < andhra.length; i++) {
			      options += '<option value="' + andhra[i] + '">' + andhra[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Arunachal Pradesh') {
			    var ap = ["Along","Anini","Anjaw","Bameng","Basar","Changlang","Chowkhem","Daporizo","Dibang Valley","Dirang","Hayuliang","Huri","Itanagar","Jairampur","Kalaktung","Kameng","Khonsa","Kolaring","Kurung Kumey","Lohit","Lower Dibang Valley","Lower Subansiri","Mariyang","Mechuka","Miao","Nefra","Pakkekesang","Pangin","Papum Pare","Passighat","Roing","Sagalee","Seppa","Siang","Tali","Taliha","Tawang","Tezu","Tirap","Tuting","Upper Siang","Upper Subansiri","Yiang Kiag"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < ap.length; i++) {
			      options += '<option value="' + ap[i] + '">' + ap[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Assam') {
			    var assam = ["Abhayapuri","Baithalangshu","Barama","Barpeta Road","Bihupuria","Bijni","Bilasipara","Bokajan","Bokakhat","Boko","Bongaigaon","Cachar","Cachar Hills","Darrang","Dhakuakhana","Dhemaji","Dhubri","Dibrugarh","Digboi","Diphu","Goalpara","Gohpur","Golaghat","Guwahati","Hailakandi","Hajo","Halflong","Hojai","Howraghat","Jorhat","Kamrup","Karbi Anglong","Karimganj","Kokarajhar","Kokrajhar","Lakhimpur","Maibong","Majuli","Mangaldoi","Mariani","Marigaon","Moranhat","Morigaon","Nagaon","Nalbari","Rangapara","Sadiya","Sibsagar","Silchar","Sivasagar","Sonitpur","Tarabarihat","Tezpur","Tinsukia","Udalgiri","Udalguri","UdarbondhBarpeta"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < assam.length; i++) {
			      options += '<option value="' + assam[i] + '">' + assam[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Bihar') {
			    var bihar = ["Adhaura","Amarpur","Araria","Areraj","Arrah","Arwal","Aurangabad","Bagaha","Banka","Banmankhi","Barachakia","Barauni","Barh","Barosi","Begusarai","Benipatti","Benipur","Bettiah","Bhabhua","Bhagalpur","Bhojpur","Bidupur","Biharsharif","Bikram","Bikramganj","Birpur","Buxar","Chakai","Champaran","Chapara","Dalsinghsarai","Danapur","Darbhanga","Daudnagar","Dhaka","Dhamdaha","Dumraon","Ekma","Forbesganj","Gaya","Gogri","Gopalganj","HKharagpur","Hajipur","Hathua","Hilsa","Imamganj","Jahanabad","Jainagar","Jamshedpur","Jamui","Jehanabad","Jhajha","Jhanjharpur","Kahalgaon","Kaimur (Bhabua)","Katihar","Katoria","Khagaria","Kishanganj","Korha","Lakhisarai","Madhepura","Madhubani","Maharajganj","Mahua","Mairwa","Mallehpur","Masrakh","Mohania","Monghyr","Motihari","Motipur","Munger","Muzaffarpur","Nabinagar","Nalanda","Narkatiaganj","Naugachia","Nawada","Pakribarwan","Pakridayal","Patna","Phulparas","Piro","Pupri","Purena","Purnia","Rafiganj","Rajauli","Ramnagar","Raniganj","Raxaul","Rohtas","Rosera","SBakhtiarpur","Saharsa","Samastipur","Saran","Sasaram","Seikhpura","Sheikhpura","Sheohar","Sherghati","Sidhawalia","Singhwara","Sitamarhi","Siwan","Sonepur","Supaul","Thakurganj","Triveniganj","Udakishanganj","Vaishali","Wazirganj"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < bihar.length; i++) {
			      options += '<option value="' + bihar[i] + '">' + bihar[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Chandigarh') {
				    var Chandigarh = ["Chandigarh"," Mani Marja"];
				   $(function() {
				  var options = '';
				  for (var i = 0; i < Chandigarh.length; i++) {
				      options += '<option value="' + Chandigarh[i] + '">' + Chandigarh[i] + '</option>';
				  }
				  $('#pcity').append(options);
				  });
				  }
			  
			  
			  if ($val=='Chhattisgarh') {
			    var Chhattisgarh = ["Ambikapur","Antagarh","Arang","Bacheli","Bagbahera","Bagicha","Baikunthpur","Balod","Balodabazar","Balrampur","Barpalli","Basana","Bastanar","Bastar","Bderajpur","Bemetara","Berla","Bhairongarh","Bhanupratappur","Bharathpur","Bhatapara","Bhilai","Bhilaigarh","Bhopalpatnam","Bijapur","Bilaspur","Bodla","Bokaband","Chandipara","Chhinagarh","Chhuriakala","Chingmut","Chuikhadan","Dabhara","Dallirajhara","Dantewada","Deobhog","Dhamda","Dhamtari","Dharamjaigarh","Dongargarh","Durg","Durgakondal","Fingeshwar","Gariaband","Garpa","Gharghoda","Gogunda","Ilamidi","Jagdalpur","Janjgir","Janjgir-Champa","Jarwa","Jashpur","Jashpurnagar","Kabirdham-Kawardha","Kanker","Kasdol","Kathdol","Kathghora","Kawardha","Keskal","Khairgarh","Kondagaon","Konta","Korba","Korea","Kota","Koyelibeda","Kuakunda","Kunkuri","Kurud","Lohadigundah","Lormi","Luckwada","Mahasamund","Makodi","Manendragarh","Manpur","Marwahi","Mohla","Mungeli","Nagri","Narainpur","Narayanpur","Neora","Netanar","Odgi","Padamkot","Pakhanjur","Pali","Pandaria","Pandishankar","Parasgaon","Pasan","Patan","Pathalgaon","Pendra","Pratappur","Premnagar","Raigarh","Raipur","Rajnandgaon","Rajpur","Ramchandrapur","Saraipali","Saranggarh","Sarona","Semaria","Shakti","Sitapur","Sukma","Surajpur","Surguja","Tapkara","Toynar","Udaipur","Uproda","Wadrainagar"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < Chhattisgarh.length; i++) {
			      options += '<option value="' + Chhattisgarh[i] + '">' + Chhattisgarh[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Dadra & Nagar Haveli') {
			    var dadra = ["Amal","Amli","Bedpa","Chikhli","Dadra & Nagar Haveli","Dahikhed","Dolara","Galonda","Kanadi","Karchond","Khadoli","Kharadpada","Kherabari","Kherdi","Kothar","Luari","Mashat","Rakholi","Rudana","Saili","Sili","Silvassa","Sindavni","Udva","Umbarkoi","Vansda","Vasona","Velugam"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < dadra.length; i++) {
			      options += '<option value="' + dadra[i] + '">' + dadra[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Daman and Diu') {
			    var daman = ["Brancavare","Dagasi","Daman","Diu","Magarvara","Nagwa","Pariali","Passo Covo"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < daman.length; i++) {
			      options += '<option value="' + daman[i] + '">' + daman[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Delhi') {
			    var delhi = ["Delhi","New Delhi","North Delhi","Noida","Patparganj","Sonabarsa","Tughlakabad"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < delhi.length; i++) {
			      options += '<option value="' + delhi[i] + '">' + delhi[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Goa') {
			    var goa = ["Canacona","Candolim","Chinchinim","Cortalim","Goa","Jua","Madgaon","Mahem","Mapuca","Marmagao","Panji","Ponda","Sanvordem","Terekhol"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < goa.length; i++) {
			      options += '<option value="' + goa[i] + '">' + goa[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Gujarat') {
			    var gujarat = ["Ahmedabad","Ahwa","Amod","Amreli","Anand","Anjar","Ankaleshwar","Babra","Balasinor","Banaskantha","Bansada","Bardoli","Bareja","Baroda","Barwala","Bayad","Bhachav","Bhanvad","Bharuch","Bhavnagar","Bhiloda","Bhuj","Billimora","Borsad","Botad","Chanasma","Chhota Udaipur","Chotila","Dabhoi","Dahod","Damnagar","Dang","Danta","Dasada","Dediapada","Deesa","Dehgam","Deodar","Devgadhbaria","Dhandhuka","Dhanera","Dharampur","Dhari","Dholka","Dhoraji","Dhrangadhra","Dhrol","Dwarka","Fortsongadh","Gadhada","Gandhi Nagar","Gariadhar","Godhra","Gogodar","Gondal","Halol","Halvad","Harij","Himatnagar","Idar","Jambusar","Jamjodhpur","Jamkalyanpur","Jamnagar","Jasdan","Jetpur","Jhagadia","Jhalod","Jodia","Junagadh","Junagarh","Kalawad","Kalol","Kapad Wanj","Keshod","Khambat","Khambhalia","Khavda","Kheda","Khedbrahma","Kheralu","Kodinar","Kotdasanghani","Kunkawav","Kutch","Kutchmandvi","Kutiyana","Lakhpat","Lakhtar","Lalpur","Limbdi","Limkheda","Lunavada","MMMangrol","Mahuva","Malia-Hatina","Maliya","Malpur","Manavadar","Mandvi","Mangrol","Mehmedabad","Mehsana","Miyagam","Modasa","Morvi","Muli","Mundra","Nadiad","Nakhatrana","Nalia","Narmada","Naswadi","Navasari","Nizar","Okha","Paddhari","Padra","Palanpur","Palitana","Panchmahals","Patan","Pavijetpur","Porbandar","Prantij","Radhanpur","Rahpar","Rajaula","Rajkot","Rajpipla","Ranavav","Sabarkantha","Sanand","Sankheda","Santalpur","Santrampur","Savarkundla","Savli","Sayan","Sayla","Shehra","Sidhpur","Sihor","Sojitra","Sumrasar","Surat","Surendranagar","Talaja","Thara","Tharad","Thasra","Una-Diu","Upleta","Vadgam","Vadodara","Valia","Vallabhipur","Valod","Valsad","Vanthali","Vapi","Vav","Veraval","Vijapur","Viramgam","Visavadar","Visnagar","Vyara","Waghodia","Wankaner"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < gujarat.length; i++) {
			      options += '<option value="' + gujarat[i] + '">' + gujarat[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Haryana') {
			    var haryana = ["Adampur Mandi","Ambala","Assandh","Bahadurgarh","Barara","Barwala","Bawal","Bawanikhera","Bhiwani","Charkhidadri","Cheeka","Chhachrauli","Dabwali","Ellenabad","Faridabad","Fatehabad","Ferojpur Jhirka","Gharaunda","Gohana","Gurgaon","Hansi","Hisar","Jagadhari","Jatusana","Jhajjar","Jind","Julana","Kaithal","Kalanaur","Kalanwali","Kalka","Karnal","Kosli","Kurukshetra","Loharu","Mahendragarh","Meham","Mewat","Mohindergarh","Naraingarh","Narnaul","Narwana","Nilokheri","Nuh","Palwal","Panchkula","Panipat","Pehowa","Ratia","Rewari","Rohtak","Safidon","Sirsa","Siwani","Sonipat","Tohana","Tohsam","Yamunanagar"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < haryana.length; i++) {
			      options += '<option value="' + haryana[i] + '">' + haryana[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Himachal Pradesh') {
			    var himachal = ["Amb","Arki","Banjar","Bharmour","Bilaspur","Chamba","Churah","Dalhousie","Dehra Gopipur","Hamirpur","Jogindernagar","Kalpa","Kangra","Kinnaur","Kullu","Lahaul","Mandi","Nahan","Nalagarh","Nirmand","Nurpur","Palampur","Pangi","Paonta","Pooh","Rajgarh","Rampur Bushahar","Rohru","Shimla","Sirmaur","Solan","Spiti","Sundernagar","Theog","Udaipur","Una"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < himachal.length; i++) {
			      options += '<option value="' + himachal[i] + '">' + himachal[i] + '</option>';
			  }
			 $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Jammu and Kashmir') {
			    var jammu = ["Akhnoor","Anantnag","Badgam","Bandipur","Baramulla","Basholi","Bedarwah","Budgam","Doda","Gulmarg","Jammu","Kalakot","Kargil","Karnah","Kathua","Kishtwar","Kulgam","Kupwara","Leh","Mahore","Nagrota","Nobra","Nowshera","Nyoma","Padam","Pahalgam","Patnitop","Poonch","Pulwama","Rajouri","Ramban","Ramnagar","Reasi","Samba","Srinagar","Udhampur","Vaishno Devi"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < jammu.length; i++) {
			      options += '<option value="' + jammu[i] + '">' + jammu[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Jharkhand') {
			    var jharkhand = ["Bagodar","Baharagora","Balumath","Barhi","Barkagaon","Barwadih","Basia","Bermo","Bhandaria","Bhawanathpur","Bishrampur","Bokaro","Bolwa","Bundu","Chaibasa","Chainpur","Chakardharpur","Chandil","Chatra","Chavparan","Daltonganj","Deoghar","Dhanbad","Dumka","Dumri","Garhwa","Garu","Ghaghra","Ghatsila","Giridih","Godda","Gomia","Govindpur","Gumla","Hazaribagh","Hunterganj","Ichak","Itki","Jagarnathpur","Jamshedpur","Jamtara","Japla","Jharmundi","Jhinkpani","Jhumaritalaiya","Kathikund","Kharsawa","Khunti","Koderma","Kolebira","Latehar","Lohardaga","Madhupur","Mahagama","Maheshpur Raj","Mandar","Mandu","Manoharpur","Muri","Nagarutatri","Nala","Noamundi","Pakur","Palamu","Palkot","Patan","Rajdhanwar","Rajmahal","Ramgarh","Ranchi","Sahibganj","Saraikela","Simaria","Simdega","Singhbhum","Tisri","Torpa"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < jharkhand.length; i++) {
			      options += '<option value="' + jharkhand[i] + '">' + jharkhand[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Karnataka') {
			    var karnataka = ["Afzalpur","Ainapur","Aland","Alur","Anekal","Ankola","Arsikere","Athani","Aurad","Bableshwar","Badami","Bagalkot","Bagepalli","Bailhongal","Bangalore","Bangalore Rural","Bangarpet","Bantwal","Basavakalyan","Basavanabagewadi","Basavapatna","Belgaum","Bellary","Belthangady","Belur","Bhadravati","Bhalki","Bhatkal","Bidar","Bijapur","Biligi","Chadchan","Challakere","Chamrajnagar","Channagiri","Channapatna","Channarayapatna","Chickmagalur","Chikballapur","Chikkaballapur","Chikkanayakanahalli","Chikkodi","Chikmagalur","Chincholi","Chintamani","Chitradurga","Chittapur","Cowdahalli","Davanagere","Deodurga","Devangere","Devarahippargi","Dharwad","Doddaballapur","Gadag","Gangavathi","Gokak","Gowribdanpur","Gubbi","Gulbarga","Gundlupet","HBHalli","HD Kote","Haliyal","Hampi","Hangal","Harapanahalli","Hassan","Haveri","Hebri","Hirekerur","Hiriyur","Holalkere","Holenarsipur","Honnali","Honnavar","Hosadurga","Hosakote","Hosanagara","Hospet","Hubli","Hukkeri","Humnabad","Hungund","Hunsagi","Hunsur","Huvinahadagali","Indi","Jagalur","Jamkhandi","Jewargi","Joida","KR Nagar","Kadur","Kalghatagi","Kamalapur","Kanakapura","Kannada","Kargal","Karkala","Karwar","Khanapur","Kodagu","Kolar","Kollegal","Koppa","Koppal","Koratageri","Krishnarajapet","Kudligi","Kumta","Kundapur","Kundgol","Kunigal","Kurugodu","Kustagi","Lingsugur","Madikeri","Madugiri","Malavalli","Malur","Mandya","Mangalore","Manipal","Manvi","Mashal","Molkalmuru","Mudalgi","Muddebihal","Mudhol","Mudigere","Mulbagal","Mundagod","Mundargi","Murugod","Mysore","Nagamangala","Nanjangud","Nargund","Narsimrajapur","Navalgund","Nelamangala","Nimburga","Pandavapura","Pavagada","Puttur","Raibag","Raichur","Ramdurg","Ranebennur","Ron","Sagar","Sakleshpur","Salkani","Sandur","Saundatti","Savanur","Sedam","Shahapur","Shankarnarayana","Shikaripura","Shimoga","Shirahatti","Shorapur","Siddapur","Sidlaghatta","Sindagi","Sindhanur","Sira","Sirsi","Siruguppa","Somwarpet","Sorab","Sringeri","Sriniwaspur","Srirangapatna","Sullia","T Narsipur","Tallak","Tarikere","Telgi","Thirthahalli","Tiptur","Tumkur","Turuvekere","Udupi","Virajpet","Wadi","Yadgiri","Yelburga","Yellapur"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < karnataka.length; i++) {
			      options += '<option value="' + karnataka[i] + '">' + karnataka[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Kerala') {
			    var kerala = ["Adimaly","Adoor","Agathy","Alappuzha","Alathur","Alleppey","Alwaye","Amini","Androth","Attingal","Badagara","Bitra","Calicut","Cannanore","Chetlet","Ernakulam","Idukki","Irinjalakuda","Kadamath","Kalpeni","Kalpetta","Kanhangad","Kanjirapally","Kannur","Karungapally","Kasargode","Kavarathy","Kiltan","Kochi","Koduvayur","Kollam","Kottayam","Kovalam","Kozhikode","Kunnamkulam","Malappuram","Mananthodi","Manjeri","Mannarghat","Mavelikkara","Minicoy","Munnar","Muvattupuzha","Nedumandad","Nedumgandam","Nilambur","Palai","Palakkad","Palghat","Pathaanamthitta","Pathanamthitta","Payyanur","Peermedu","Perinthalmanna","Perumbavoor","Punalur","Quilon","Ranni","Shertallai","Shoranur","Taliparamba","Tellicherry","Thiruvananthapuram","Thodupuzha","Thrissur","Tirur","Tiruvalla","Trichur","Trivandrum","Uppala","Vadakkanchery","Vikom","Wayanad"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < kerala.length; i++) {
			      options += '<option value="' + kerala[i] + '">' + kerala[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Lakshadweep') {
				    var Lakshadweep = ["Agatti Island","Bingaram Island","Bitra Island","Chetlat Island","Kadmat Island","Kalpeni Island","Kavaratti Island","Kiltan Island","Lakshadweep Sea","Minicoy Island","North Island","South Island"];
				   $(function() {
				  var options = '';
				  for (var i = 0; i < Lakshadweep.length; i++) {
				      options += '<option value="' + Lakshadweep[i] + '">' + Lakshadweep[i] + '</option>';
				  }
				  $('#pcity').append(options);
				  });
				  }
			  
			  if ($val=='Madhya Pradesh') {
			    var mp = ["Agar","Ajaigarh","Alirajpur","Amarpatan","Amarwada","Ambah","Anuppur","Arone","Ashoknagar","Ashta","Atner","Babaichichli","Badamalhera","Badarwsas","Badnagar","Badnawar","Badwani","Bagli","Baihar","Balaghat","Baldeogarh","Baldi","Bamori","Banda","Bandhavgarh","Bareli","Baroda","Barwaha","Barwani","Batkakhapa","Begamganj","Beohari","Berasia","Berchha","Betul","Bhainsdehi","Bhander","Bhanpura","Bhikangaon","Bhimpur","Bhind","Bhitarwar","Bhopal","Biaora","Bijadandi","Bijawar","Bijaypur","Bina","Birsa","Birsinghpur","Budhni","Burhanpur","Buxwaha","Chachaura","Chanderi","Chaurai","Chhapara","Chhatarpur","Chhindwara","Chicholi","Chitrangi","Churhat","Dabra","Damoh","Datia","Deori","Deosar","Depalpur","Dewas","Dhar","Dharampuri","Dindori","Gadarwara","Gairatganj","Ganjbasoda","Garoth","Ghansour","Ghatia","Ghatigaon","Ghorandogri","Ghughari","Gogaon","Gohad","Goharganj","Gopalganj","Gotegaon","Gourihar","Guna","Gunnore","Gwalior","Gyraspur","Hanumana","Harda","Harrai","Harsud","Hatta","Hoshangabad","Ichhawar","Indore","Isagarh","Itarsi","Jabalpur","Jabera","Jagdalpur","Jaisinghnagar","Jaithari","Jaitpur","Jaitwara","Jamai","Jaora","Jatara","Jawad","Jhabua","Jobat","Jora","Kakaiya","Kannod","Kannodi","Karanjia","Kareli","Karera","Karhal","Karpa","Kasrawad","Katangi","Katni","Keolari","Khachrod","Khajuraho","Khakner","Khalwa","Khandwa","Khaniadhana","Khargone","Khategaon","Khetia","Khilchipur","Khirkiya","Khurai","Kolaras","Kotma","Kukshi","Kundam","Kurwai","Kusmi","Laher","Lakhnadon","Lamta","Lanji","Lateri","Laundi","Maheshwar","Mahidpurcity","Maihar","Majhagwan","Majholi","Malhargarh","Manasa","Manawar","Mandla","Mandsaur","Manpur","Mauganj","Mawai","Mehgaon","Mhow","Morena","Multai","Mungaoli","Nagod","Nainpur","Narsingarh","Narsinghpur","Narwar","Nasrullaganj","Nateran","Neemuch","Niwari","Niwas","Nowgaon","Pachmarhi","Pandhana","Pandhurna","Panna","Parasia","Patan","Patera","Patharia","Pawai","Petlawad","Pichhore","Piparia","Pohari","Prabhapattan","Punasa","Pushprajgarh","Raghogarh","Raghunathpur","Rahatgarh","Raisen","Rajgarh","Rajpur","Ratlam","Rehli","Rewa","Sabalgarh","Sagar","Sailana","Sanwer","Sarangpur","Sardarpur","Satna","Saunsar","Sehore","Sendhwa","Seondha","Seoni","Seonimalwa","Shahdol","Shahnagar","Shahpur","Shajapur","Sheopur","Sheopurkalan","Shivpuri","Shujalpur","Sidhi","Sihora","Silwani","Singrauli","Sirmour","Sironj","Sitamau","Sohagpur","Sondhwa","Sonkatch","Susner","Tamia","Tarana","Tendukheda","Teonthar","Thandla","Tikamgarh","Timarani","Udaipura","Ujjain","Umaria","Umariapan","Vidisha","Vijayraghogarh","Waraseoni","Zhirnia"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < mp.length; i++) {
			      options += '<option value="' + mp[i] + '">' + mp[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Maharashtra') {
			    var maharashtra = ["Achalpur","Aheri","Ahmednagar","Ahmedpur","Ajara","Akkalkot","Akola","Akole","Akot","Alibagh","Amagaon","Amalner","Ambad","Ambejogai","Amravati","Arjuni Merogaon","Arvi","Ashti","Atpadi","Aurangabad","Ausa","Babhulgaon","Balapur","Baramati","Barshi Takli","Barsi","Basmatnagar","Bassein","Beed","Bhadrawati","Bhamregadh","Bhandara","Bhir","Bhiwandi","Bhiwapur","Bhokar","Bhokardan","Bhoom","Bhor","Bhudargad","Bhusawal","Billoli","Brahmapuri","Buldhana","Butibori","Chalisgaon","Chamorshi","Chandgad","Chandrapur","Chandur","Chanwad","Chhikaldara","Chikhali","Chinchwad","Chiplun","Chopda","Chumur","Dahanu","Dapoli","Darwaha","Daryapur","Daund","Degloor","Delhi Tanda","Deogad","Deolgaonraja","Deori","Desaiganj","Dhadgaon","Dhanora","Dharani","Dhiwadi","Dhule","Dhulia","Digras","Dindori","Edalabad","Erandul","Etapalli","Gadhchiroli","Gadhinglaj","Gaganbavada","Gangakhed","Gangapur","Gevrai","Ghatanji","Golegaon","Gondia","Gondpipri","Goregaon","Guhagar","Hadgaon","Hatkangale","Hinganghat","Hingoli","Hingua","Igatpuri","Indapur","Islampur","Jalgaon","Jalna","Jamkhed","Jamner","Jath","Jawahar","Jintdor","Junnar","Kagal","Kaij","Kalamb","Kalamnuri","Kallam","Kalmeshwar","Kalwan","Kalyan","Kamptee","Kandhar","Kankavali","Kannad","Karad","Karjat","Karmala","Katol","Kavathemankal","Kedgaon","Khadakwasala","Khamgaon","Khed","Khopoli","Khultabad","Kinwat","Kolhapur","Kopargaon","Koregaon","Kudal","Kuhi","Kurkheda","Kusumba","Lakhandur","Langa","Latur","Lonar","Lonavala","Madangad","Madha","Mahabaleshwar","Mahad","Mahagaon","Mahasala","Mahaswad","Malegaon","Malgaon","Malgund","Malkapur","Malsuras","Malwan","Mancher","Mangalwedha","Mangaon","Mangrulpur","Manjalegaon","Manmad","Maregaon","Mehda","Mekhar","Mohadi","Mohol","Mokhada","Morshi","Mouda","Mukhed","Mul","Mumbai","Murbad","Murtizapur","Murud","Nagbhir","Nagpur","Nahavara","Nanded","Nandgaon","Nandnva","Nandurbar","Narkhed","Nashik","Navapur","Ner","Newasa","Nilanga","Niphad","Omerga","Osmanabad","Pachora","Paithan","Palghar","Pali","Pandharkawada","Pandharpur","Panhala","Paranda","Parbhani","Parner","Parola","Parseoni","Partur","Patan","Pathardi","Pathari","Patoda","Pauni","Peint","Pen","Phaltan","Pimpalner","Pirangut","Poladpur","Pune","Pusad","Pusegaon","Radhanagar","Rahuri","Raigad","Rajapur","Rajgurunagar","Rajura","Ralegaon","Ramtek","Ratnagiri","Raver","Risod","Roha","Sakarwadi","Sakoli","Sakri","Salekasa","Samudrapur","Sangamner","Sanganeshwar","Sangli","Sangola","Sanguem","Saoner","Saswad","Satana","Satara","Sawantwadi","Seloo","Shahada","Shahapur","Shahuwadi","Shevgaon","Shirala","Shirol","Shirpur","Shirur","Shirwal","Sholapur","Shri Rampur","Shrigonda","Shrivardhan","Sillod","Sinderwahi","Sindhudurg","Sindkheda","Sindkhedaraja","Sinnar","Sironcha","Soyegaon","Surgena","Talasari","Talegaon SJi Pant","Taloda","Tasgaon","Thane","Tirora","Tiwasa","Trimbak","Tuljapur","Tumsar","Udgir","Umarkhed","Umrane","Umrer","Urlikanchan","Vaduj","Velhe","Vengurla","Vijapur","Vita","Wada","Wai","Walchandnagar","Wani","Wardha","Warlydwarud","Warora","Washim","Wathar","Yavatmal","Yawal","Yeola","Yeotmal"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < maharashtra.length; i++) {
			      options += '<option value="' + maharashtra[i] + '">' + maharashtra[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			   if ($val=='Manipur') {
			    var manipur = ["Bishnupur","Chakpikarong","Chandel","Chattrik","Churachandpur","Imphal","Jiribam","Kakching","Kalapahar","Mao","Mulam","Parbung","Sadarhills","Saibom","Sempang","Senapati","Sochumer","Taloulong","Tamenglong","Thinghat","Thoubal","Ukhrul"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < manipur.length; i++) {
			      options += '<option value="' + manipur[i] + '">' + manipur[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			   if ($val=='Meghalaya') {
			    var meghalaya = ["Amlaren","Baghmara","Cherrapunjee","Dadengiri","Garo Hills","Jaintia Hills","Jowai","Khasi Hills","Khliehriat","Mariang","Mawkyrwat","Nongpoh","Nongstoin","Resubelpara","Ri Bhoi","Shillong","Tura","Williamnagar"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < meghalaya.length; i++) {
			      options += '<option value="' + meghalaya[i] + '">' + meghalaya[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			   if ($val=='Mizoram') {
			    var mizoram = ["Aizawl","Champhai","Demagiri","Kolasib","Lawngtlai","Lunglei","Mamit","Saiha","Serchhip"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < mizoram.length; i++) {
			      options += '<option value="' + mizoram[i] + '">' + mizoram[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			   if ($val=='Nagaland') {
			    var nagaland = ["Dimapur","Jalukie","Kiphire","Kohima","Mokokchung","Mon","Phek","Tuensang","Wokha","Zunheboto"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < nagaland.length; i++) {
			      options += '<option value="' + nagaland[i] + '">' + nagaland[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Orissa') {
			    var orissa = ["Anandapur","Angul","Anugul","Aska","Athgarh","Athmallik","Attabira","Bagdihi","Balangir","Balasore","Baleswar","Baliguda","Balugaon","Banaigarh","Bangiriposi","Barbil","Bargarh","Baripada","Barkot","Basta","Berhampur","Betanati","Bhadrak","Bhanjanagar","Bhawanipatna","Bhubaneswar","Birmaharajpur","Bisam Cuttack","Boriguma","Boudh","Buguda","Chandbali","Chhatrapur","Chhendipada","Cuttack","Daringbadi","Daspalla","Deodgarh","Deogarh","Dhanmandal","Dharamgarh","Dhenkanal","Digapahandi","Dunguripali","G Udayagiri","Gajapati","Ganjam","Ghatgaon","Gudari","Gunupur","Hemgiri","Hindol","Jagatsinghapur","Jajpur","Jamankira","Jashipur","Jayapatna","Jeypur","Jharigan","Jharsuguda","Jujumura","Kalahandi","Kalimela","Kamakhyanagar","Kandhamal","Kantabhanji","Kantamal","Karanjia","Kashipur","Kendrapara","Kendujhar","Keonjhar","Khalikote","Khordha","Khurda","Komana","Koraput","Kotagarh","Kuchinda","Lahunipara","Laxmipur","M Rampur","Malkangiri","Mathili","Mayurbhanj","Mohana","Motu","Nabarangapur","Naktideul","Nandapur","Narlaroad","Narsinghpur","Nayagarh","Nimapara","Nowparatan","Nowrangapur","Nuapada","Padampur","Paikamal","Palla Hara","Papadhandi","Parajang","Pardip","Parlakhemundi","Patnagarh","Pattamundai","Phiringia","Phulbani","Puri","Puruna Katak","R Udayigiri","Rairakhol","Rairangpur","Rajgangpur","Rajkhariar","Rayagada","Rourkela","Sambalpur","Sohela","Sonapur","Soro","Subarnapur","Sunabeda","Sundergarh","Surada","T Rampur","Talcher","Telkoi","Titlagarh","Tumudibandha","Udala","Umerkote"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < orissa.length; i++) {
			      options += '<option value="' + orissa[i] + '">' + orissa[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Pondicherry') {
				    var Pondicherry = ["Bahur","Karaikal","Mahe","Pondicherry","Purnankuppam","Valudavur","Villianur","Yanam"];
				   $(function() {
				  var options = '';
				  for (var i = 0; i < Pondicherry.length; i++) {
				      options += '<option value="' + Pondicherry[i] + '">' + Pondicherry[i] + '</option>';
				  }
				  $('#pcity').append(options);
				  });
				  }
			  
			  
			  
			  if ($val=='Punjab') {
			    var punjab = ["Abohar","Ajnala","Amritsar","Balachaur","Barnala","Batala","Bathinda","Chandigarh","Dasua","Dinanagar","Faridkot","Fatehgarh Sahib","Fazilka","Ferozepur","Garhashanker","Goindwal","Gurdaspur","Guruharsahai","Hoshiarpur","Jagraon","Jalandhar","Jugial","Kapurthala","Kharar","Kotkapura","Ludhiana","Malaut","Malerkotla","Mansa","Moga","Muktasar","Nabha","Nakodar","Nangal","Nawanshahar","Nawanshahr","Pathankot","Patiala","Patti","Phagwara","Phillaur","Phulmandi","Quadian","Rajpura","Raman","Rayya","Ropar","Rupnagar","Samana","Samrala","Sangrur","Sardulgarh","Sarhind","SAS Nagar","Sultanpur Lodhi","Sunam","Tanda Urmar","Taran Taran","Zira"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < punjab.length; i++) {
			      options += '<option value="' + punjab[i] + '">' + napunjabgaland[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Rajasthan') {
			    var rajasthan = ["Abu Road","Ahore","Ajmer","Aklera","Alwar","Amber","Amet","Anupgarh","Asind","Aspur","Atru","Bagidora","Bali","Bamanwas","Banera","Bansur","Banswara","Baran","Bari","Barisadri","Barmer","Baseri","Bassi","Baswa","Bayana","Beawar","Begun","Behror","Bhadra","Bharatpur","Bhilwara","Bhim","Bhinmal","Bikaner","Bilara","Bundi","Chhabra","Chhipaborad","Chirawa","Chittorgarh","Chohtan","Churu","Dantaramgarh","Dausa","Deedwana","Deeg","Degana","Deogarh","Deoli","Desuri","Dhariawad","Dholpur","Digod","Dudu","Dungarpur","Dungla","Fatehpur","Gangapur","Gangdhar","Gerhi","Ghatol","Girwa","Gogunda","Hanumangarh","Hindaun","Hindoli","Hurda","Jahazpur","Jaipur","Jaisalmer","Jalore","Jhalawar","Jhunjhunu","Jodhpur","Kaman","Kapasan","Karauli","Kekri","Keshoraipatan","Khandar","Kherwara","Khetri","Kishanganj","Kishangarh","Kishangarhbas","Kolayat","Kota","Kotputli","Kotra","Kotri","Kumbalgarh","Kushalgarh","Ladnun","Ladpura","Lalsot","Laxmangarh","Lunkaransar","Mahuwa","Malpura","Malvi","Mandal","Mandalgarh","Mandawar","Mangrol","Marwar-Jn","Merta","Nadbai","Nagaur","Nainwa","Nasirabad","Nathdwara","Nawa","Neem Ka Thana","Newai","Nimbahera","Nohar","Nokha","Onli","Osian","Pachpadara","Pachpahar","Padampur","Pali","Parbatsar","Phagi","Phalodi","Pilani","Pindwara","Pipalda","Pirawa","Pokaran","Pratapgarh","Raipur","Raisinghnagar","Rajgarh","Rajsamand","Ramganj Mandi","Ramgarh","Rashmi","Ratangarh","Reodar","Rupbas","Sadulshahar","Sagwara","Sahabad","Salumber","Sanchore","Sangaria","Sangod","Sapotra","Sarada","Sardarshahar","Sarwar","Sawai Madhopur","Shahapura","Sheo","Sheoganj","Shergarh","Sikar","Sirohi","Siwana","Sojat","Sri Dungargarh","Sri Ganganagar","Sri Karanpur","Sri Madhopur","Sujangarh","Taranagar","Thanaghazi","Tibbi","Tijara","Todaraisingh","Tonk","Udaipur","Udaipurwati","Uniayara","Vallabhnagar","Viratnagar"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < rajasthan.length; i++) {
			      options += '<option value="' + rajasthan[i] + '">' + rajasthan[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  if ($val=='Sikkim') {
			    var sikkim = ["Barmiak","Be","Bhurtuk","Chhubakha","Chidam","Chubha","Chumikteng","Dentam","Dikchu","Dzongri","Gangtok","Gauzing","Gyalshing","Hema","Kerung","Lachen","Lachung","Lema","Lingtam","Lungthu","Mangan","Namchi","Namthang","Nanga","Nantang","Naya Bazar","Padamachen","Pakhyong","Pemayangtse","Phensang","Rangli","Rinchingpong","Sakyong","Samdong","Singtam","Siniolchu","Sombari","Soreng","Sosing","Tekhug","Temi","Tsetang","Tsomgo","Tumlong","Yangang","Yumtang"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < sikkim.length; i++) {
			      options += '<option value="' + sikkim[i] + '">' + sikkim[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Tamil Nadu') {
			    var tn = ["Ambasamudram","Anamali","Arakandanallur","Arantangi","Aravakurichi","Ariyalur","Arkonam","Arni","Aruppukottai","Attur","Avanashi","Batlagundu","Bhavani","Chengalpattu","Chengam","Chennai","Chidambaram","Chingleput","Coimbatore","Courtallam","Cuddalore","Cumbum","Denkanikoitah","Devakottai","Dharampuram","Dharmapuri","Dindigul","Erode","Gingee","Gobichettipalayam","Gudalur","Gudiyatham","Harur","Hosur","Jayamkondan","Kallkurichi","Kanchipuram","Kangayam","Kanyakumari","Karaikal","Karaikudi","Karur","Keeranur","Kodaikanal","Kodumudi","Kotagiri","Kovilpatti","Krishnagiri","Kulithalai","Kumbakonam","Kuzhithurai","Madurai","Madurantgam","Manamadurai","Manaparai","Mannargudi","Mayiladuthurai","Mayiladutjurai","Mettupalayam","Metturdam","Mudukulathur","Mulanur","Musiri","Nagapattinam","Nagarcoil","Namakkal","Nanguneri","Natham","Neyveli","Nilgiris","Oddanchatram","Omalpur","Ootacamund","Ooty","Orathanad","Palacode","Palani","Palladum","Papanasam","Paramakudi","Pattukottai","Perambalur","Perundurai","Pollachi","Polur","Pondicherry","Ponnamaravathi","Ponneri","Pudukkottai","Rajapalayam","Ramanathapuram","Rameshwaram","Ranipet","Rasipuram","Salem","Sankagiri","Sankaran","Sathiyamangalam","Sivaganga","Sivakasi","Sriperumpudur","Srivaikundam","Tenkasi","Thanjavur","Theni","Thirumanglam","Thiruraipoondi","Thoothukudi","Thuraiyure","Tindivanam","Tiruchendur","Tiruchengode","Tiruchirappalli","Tirunelvelli","Tirupathur","Tirupur","Tiruttani","Tiruvallur","Tiruvannamalai","Tiruvarur","Tiruvellore","Tiruvettipuram","Trichy","Tuticorin","Udumalpet","Ulundurpet","Usiliampatti","Uthangarai","Valapady","Valliyoor","Vaniyambadi","Vedasandur","Vellore","Velur","Vilathikulam","Villupuram","Virudhachalam","Virudhunagar","Wandiwash","Yercaud"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < tn.length; i++) {
			      options += '<option value="' + tn[i] + '">' + tn[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Telangana') {
			    var telangana = ["Adilabad","Hyderabad","Karimnagar","Mahbubnagar","Medak","Nalgonda","Nizamabad","Ranga Reddy","Warangal"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < telangana.length; i++) {
			      options += '<option value="' + telangana[i] + '">' + telangana[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Tripura') {
			    var tripura = ["Agartala","Ambasa","Bampurbari","Belonia","Dhalai","Dharam Nagar","Kailashahar","Kamal Krishnabari","Khopaiyapara","Khowai","Phuldungsei","Radha Kishore Pur","Tripura"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < tripura.length; i++) {
			      options += '<option value="' + tripura[i] + '">' + tripura[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Uttar Pradesh') {
			    var up = ["Achhnera","Agra","Akbarpur","Aliganj","Aligarh","Allahabad","Ambedkar Nagar","Amethi","Amiliya","Amroha","Anola","Atrauli","Auraiya","Azamgarh","Baberu","Badaun","Baghpat","Bagpat","Baheri","Bahraich","Ballia","Balrampur","Banda","Bansdeeh","Bansgaon","Bansi","Barabanki","Bareilly","Basti","Bhadohi","Bharthana","Bharwari","Bhogaon","Bhognipur","Bidhuna","Bijnore","Bikapur","Bilari","Bilgram","Bilhaur","Bindki","Bisalpur","Bisauli","Biswan","Budaun","Budhana","Bulandshahar","Bulandshahr","Capianganj","Chakia","Chandauli","Charkhari","Chhata","Chhibramau","Chirgaon","Chitrakoot","Chunur","Dadri","Dalmau","Dataganj","Debai","Deoband","Deoria","Derapur","Dhampur","Domariyaganj","Dudhi","Etah","Etawah","Faizabad","Farrukhabad","Fatehpur","Firozabad","Garauth","Garhmukteshwar","Gautam Buddha Nagar","Ghatampur","Ghaziabad","Ghazipur","Ghosi","Gonda","Gorakhpur","Gunnaur","Haidergarh","Hamirpur","Hapur","Hardoi","Harraiya","Hasanganj","Hasanpur","Hathras","Jalalabad","Jalaun","Jalesar","Jansath","Jarar","Jasrana","Jaunpur","Jhansi","Jyotiba Phule Nagar","Kadipur","Kaimganj","Kairana","Kaisarganj","Kalpi","Kannauj","Kanpur","Karchhana","Karhal","Karvi","Kasganj","Kaushambi","Kerakat","Khaga","Khair","Khalilabad","Kheri","Konch","Kumaon","Kunda","Kushinagar","Lalganj","Lalitpur","Lucknow","Machlishahar","Maharajganj","Mahoba","Mainpuri","Malihabad","Mariyahu","Math","Mathura","Mau","Maudaha","Maunathbhanjan","Mauranipur","Mawana","Meerut","Mehraun","Meja","Mirzapur","Misrikh","Modinagar","Mohamdabad","Mohamdi","Moradabad","Musafirkhana","Muzaffarnagar","Nagina","Najibabad","Nakur","Nanpara","Naraini","Naugarh","Nawabganj","Nighasan","Noida","Orai","Padrauna","Pahasu","Patti","Pharenda","Phoolpur","Phulpur","Pilibhit","Pitamberpur","Powayan","Pratapgarh","Puranpur","Purwa","Raibareli","Rampur","Ramsanehi Ghat","Rasara","Rath","Robertsganj","Sadabad","Safipur","Sagri","Saharanpur","Sahaswan","Sahjahanpur","Saidpur","Salempur","Salon","Sambhal","Sandila","Sant Kabir Nagar","Sant Ravidas Nagar","Sardhana","Shahabad","Shahganj","Shahjahanpur","Shikohabad","Shravasti","Siddharthnagar","Sidhauli","Sikandra Rao","Sikandrabad","Sitapur","Siyana","Sonbhadra","Soraon","Sultanpur","Tanda","Tarabganj","Tilhar","Unnao","Utraula","Varanasi","Zamania"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < up.length; i++) {
			      options += '<option value="' + up[i] + '">' + up[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='Uttaranchal') {
			    var uttarakhand = ["Almora","Bageshwar","Bhatwari","Chakrata","Chamoli","Champawat","Dehradun","Deoprayag","Dharchula","Dunda","Haldwani","Haridwar","Joshimath","Karan Prayag","Kashipur","Khatima","Kichha","Lansdown","Munsiari","Mussoorie","Nainital","Pantnagar","Partapnagar","Pauri Garhwal","Pithoragarh","Purola","Rajgarh","Ranikhet","Roorkee","Rudraprayag","Tehri Garhwal","Udham Singh Nagar","Ukhimath","Uttarkashi"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < uttarakhand.length; i++) {
			      options += '<option value="' + uttarakhand[i] + '">' + uttarakhand[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
			  
			  
			  if ($val=='West Bengal') {
			    var wb = ["Adra","Alipurduar","Amlagora","Arambagh","Asansol","Balurghat","Bankura","Bardhaman","Basirhat","Berhampur","Bethuadahari","Birbhum","Birpara","Bishanpur","Bolpur","Bongoan","Bulbulchandi","Burdwan","Calcutta","Canning","Champadanga","Contai","Cooch Behar","Daimond Harbour","Dalkhola","Dantan","Darjeeling","Dhaniakhali","Dhuliyan","Dinajpur","Dinhata","Durgapur","Gangajalghati","Gangarampur","Ghatal","Guskara","Habra","Haldia","Harirampur","Harishchandrapur","Hooghly","Howrah","Islampur","Jagatballavpur","Jalpaiguri","Jhalda","Jhargram","Kakdwip","Kalchini","Kalimpong","Kalna","Kandi","Karimpur","Katwa","Kharagpur","Khatra","Krishnanagar","Mal Bazar","Malda","Manbazar","Mathabhanga","Medinipur","Mekhliganj","Mirzapur","Murshidabad","Nadia","Nagarakata","Nalhati","Nayagarh","Parganas","Purulia","Raiganj","Rampur Hat","Ranaghat","Seharabazar","Siliguri","Suri","Takipur","Tamluk"];
			   $(function() {
			  var options = '';
			  for (var i = 0; i < wb.length; i++) {
			      options += '<option value="' + wb[i] + '">' + wb[i] + '</option>';
			  }
			  $('#pcity').append(options);
			  });
			  }
		   
	});



var studdata='';

$(document).ready(function(){
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	
	
	var studentid=$.urlParam('studentid')
	$("#studentid").val($.urlParam('studentid').replace(/%20/g, " "));
	$("#studentname").val($.urlParam('studentname').replace(/%20/g, " "));
	$("#prnno").val($.urlParam('prnno'));
	$("#guardianname").val($.urlParam('guardianname').replace(/%20/g, " "))
	$("#datepicker-1").val($.urlParam('dateofbirth').replace(/%20/g, " "));
	$("#editphoto").attr('src','photoservlet?studentid='+studentid);
	$("#gphoto").attr('src','photoservletparent?studentid='+studentid);
	var photoupdate='0';
	$("#chkphoto").change(function(){
		var chk=$("#chkphoto");
		if($("#chkphoto").is(':checked'))
		{
			$("#photo").attr('disabled',false);
			photoupdate='1';
		}
		else
		{
			$("#photo").attr('disabled',true);
			
		}		
	});
	if($.urlParam('gender')=='male'){
		$("#male").attr('checked',true);
	}
	else
	{
		$("#female").attr('checked',true);
	}
	$("#bloodgroup").val($.urlParam('bloodgroup').replace(/%20/g, " "));
	$("#religion option:contains(" + $.urlParam('religion').replace(/%20/g, " ") +")").attr("selected", true);
	$("#category option:contains(" + $.urlParam('category').replace(/%20/g, " ") +")").attr("selected", true);
	$("#caste").val($.urlParam('caste').replace(/%20/g, " "));
	$("#email").val($.urlParam('email').replace(/%20/g, " "));
	$("#phone").val($.urlParam('phone').replace(/%20/g, " "));
	$("#address").val($.urlParam('address').replace(/%20/g, " "));
	$("#paddress").val($.urlParam('paddress').replace(/%20/g, " "));
	
	var state=$.urlParam('state').replace(/%20/g, " ");
	var pstate=$.urlParam('pstate').replace(/%20/g, " ");
	var city=$.urlParam('city').replace(/%20/g, " ");
	var pcity=$.urlParam('pcity').replace(/%20/g, " ");
	
	$("#state option:contains(" + $.urlParam('state').replace(/%20/g, " ") +")").attr("selected", true);
	$("#pstate option:contains(" + $.urlParam('pstate').replace(/%20/g, " ") +")").attr("selected", true);
	
	$(function() {
		var state=$.urlParam('state').replace(/%20/g, " ");
		var pstate=$.urlParam('pstate').replace(/%20/g, " ");
		var city=$.urlParam('city').replace(/%20/g, " ");
		var pcity=$.urlParam('pcity').replace(/%20/g, " ");
		$('#pcity').empty();
		$('#pcity').append("<option value=''>---Select City---</option>");
		var $val;
		for(i=0;i<2;i++)
		{
			if(i==0)
			{
				$val=state;
				if($val=='Andaman & Nicobar') {
					   var andman = ["Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita ,Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < andman.length; i++) {
					      options += '<option value="' + andman[i] + '">' + andman[i] + '</option>';
					  }
					  
					  
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
				
				
				
				if($val=='Andhra Pradesh') {
					   var andhra = ["Achampet","Adilabad","Adoni","Alampur","Allagadda","Alur","Amalapuram","Amangallu","Anakapalle","Anantapur","Andole","Araku","Armoor","Asifabad","Aswaraopet","Atmakur","B Kothakota","Badvel","Banaganapalle","Bandar","Bangarupalem","Banswada","Bapatla","Bellampalli","Bhadrachalam","Bhainsa","Bheemunipatnam","Bhimadole","Bhimavaram","Bhongir","Bhooragamphad","Boath","Bobbili","Bodhan","Chandoor","Chavitidibbalu","Chejerla","Chepurupalli","Cherial","Chevella","Chinnor","Chintalapudi","Chintapalle","Chirala","Chittoor","Chodavaram","Cuddapah","Cumbum","Darsi","Devarakonda","Dharmavaram","Dichpalli","Divi","Donakonda","Dronachalam","East Godavari","Eluru","Eturnagaram","Gadwal","Gajapathinagaram","Gajwel","Garladinne","Giddalur","Godavari","Gooty","Gudivada","Gudur","Guntur","Hindupur","Hunsabad","Huzurabad","Huzurnagar","Hyderabad","Ibrahimpatnam","Jaggayyapet","Jagtial","Jammalamadugu","Jangaon","Jangareddygudem","Jannaram","Kadiri","Kaikaluru","Kakinada","Kalwakurthy","Kalyandurg","Kamalapuram","Kamareddy","Kambadur","Kanaganapalle","Kandukuru","Kanigiri","Karimnagar","Kavali","Khammam","Khanapur (AP)","Kodangal","Koduru","Koilkuntla","Kollapur","Kothagudem","Kovvur","Krishna","Krosuru","Kuppam","Kurnool","Lakkireddipalli","Madakasira","Madanapalli","Madhira","Madnur","Mahabubabad","Mahabubnagar","Mahadevapur","Makthal","Mancherial","Mandapeta","Mangalagiri","Manthani","Markapur","Marturu","Medachal","Medak","Medarmetla","Metpalli","Mriyalguda","Mulug","Mylavaram","Nagarkurnool","Nalgonda","Nallacheruvu","Nampalle","Nandigama","Nandikotkur","Nandyal","Narasampet","Narasaraopet","Narayanakhed","Narayanpet","Narsapur","Narsipatnam","Nazvidu","Nelloe","Nellore","Nidamanur","Nirmal","Nizamabad","Nuguru","Ongole","Outsarangapalle","Paderu","Pakala","Palakonda","Paland","Palmaneru","Pamuru","Pargi","Parkal","Parvathipuram","Pathapatnam","Pattikonda","Peapalle","Peddapalli","Peddapuram","Penukonda","Piduguralla","Piler","Pithapuram","Podili","Polavaram","Prakasam","Proddatur","Pulivendla","Punganur","Putturu","Rajahmundri","Rajampeta","Ramachandrapuram","Ramannapet","Rampachodavaram","Rangareddy","Rapur","Rayachoti","Rayadurg","Razole","Repalle","Saluru","Sangareddy","Sathupalli","Sattenapalle","Satyavedu","Shadnagar","Siddavattam","Siddipet","Sileru","Sircilla","Sirpur Kagaznagar","Sodam","Sompeta","Srikakulam","Srikalahasthi","Srisailam","Srungavarapukota","Sudhimalla","Sullarpet","Tadepalligudem","Tadipatri","Tanduru","Tanuku","Tekkali","Tenali","Thungaturthy","Tirivuru","Tirupathi","Tuni","Udaygiri","Ulvapadu","Uravakonda","Utnor","VR Puram","Vaimpalli","Vayalpad","Venkatgiri","Venkatgirikota","Vijayawada","Vikrabad","Vinjamuru","Vinukonda","Visakhapatnam","Vizayanagaram","Vizianagaram","Vuyyuru","Wanaparthy","Warangal","Wardhannapet","Yelamanchili","Yelavaram","Yeleswaram","Yellandu","Yellanuru","Yellareddy","Yerragondapalem","Zahirabad"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < andhra.length; i++) {
					      options += '<option value="' + andhra[i] + '">' + andhra[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Arunachal Pradesh') {
					    var ap = ["Along","Anini","Anjaw","Bameng","Basar","Changlang","Chowkhem","Daporizo","Dibang Valley","Dirang","Hayuliang","Huri","Itanagar","Jairampur","Kalaktung","Kameng","Khonsa","Kolaring","Kurung Kumey","Lohit","Lower Dibang Valley","Lower Subansiri","Mariyang","Mechuka","Miao","Nefra","Pakkekesang","Pangin","Papum Pare","Passighat","Roing","Sagalee","Seppa","Siang","Tali","Taliha","Tawang","Tezu","Tirap","Tuting","Upper Siang","Upper Subansiri","Yiang Kiag"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < ap.length; i++) {
					      options += '<option value="' + ap[i] + '">' + ap[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Assam') {
					    var assam = ["Abhayapuri","Baithalangshu","Barama","Barpeta Road","Bihupuria","Bijni","Bilasipara","Bokajan","Bokakhat","Boko","Bongaigaon","Cachar","Cachar Hills","Darrang","Dhakuakhana","Dhemaji","Dhubri","Dibrugarh","Digboi","Diphu","Goalpara","Gohpur","Golaghat","Guwahati","Hailakandi","Hajo","Halflong","Hojai","Howraghat","Jorhat","Kamrup","Karbi Anglong","Karimganj","Kokarajhar","Kokrajhar","Lakhimpur","Maibong","Majuli","Mangaldoi","Mariani","Marigaon","Moranhat","Morigaon","Nagaon","Nalbari","Rangapara","Sadiya","Sibsagar","Silchar","Sivasagar","Sonitpur","Tarabarihat","Tezpur","Tinsukia","Udalgiri","Udalguri","UdarbondhBarpeta"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < assam.length; i++) {
					      options += '<option value="' + assam[i] + '">' + assam[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Bihar') {
					    var bihar = ["Adhaura","Amarpur","Araria","Areraj","Arrah","Arwal","Aurangabad","Bagaha","Banka","Banmankhi","Barachakia","Barauni","Barh","Barosi","Begusarai","Benipatti","Benipur","Bettiah","Bhabhua","Bhagalpur","Bhojpur","Bidupur","Biharsharif","Bikram","Bikramganj","Birpur","Buxar","Chakai","Champaran","Chapara","Dalsinghsarai","Danapur","Darbhanga","Daudnagar","Dhaka","Dhamdaha","Dumraon","Ekma","Forbesganj","Gaya","Gogri","Gopalganj","HKharagpur","Hajipur","Hathua","Hilsa","Imamganj","Jahanabad","Jainagar","Jamshedpur","Jamui","Jehanabad","Jhajha","Jhanjharpur","Kahalgaon","Kaimur (Bhabua)","Katihar","Katoria","Khagaria","Kishanganj","Korha","Lakhisarai","Madhepura","Madhubani","Maharajganj","Mahua","Mairwa","Mallehpur","Masrakh","Mohania","Monghyr","Motihari","Motipur","Munger","Muzaffarpur","Nabinagar","Nalanda","Narkatiaganj","Naugachia","Nawada","Pakribarwan","Pakridayal","Patna","Phulparas","Piro","Pupri","Purena","Purnia","Rafiganj","Rajauli","Ramnagar","Raniganj","Raxaul","Rohtas","Rosera","SBakhtiarpur","Saharsa","Samastipur","Saran","Sasaram","Seikhpura","Sheikhpura","Sheohar","Sherghati","Sidhawalia","Singhwara","Sitamarhi","Siwan","Sonepur","Supaul","Thakurganj","Triveniganj","Udakishanganj","Vaishali","Wazirganj"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < bihar.length; i++) {
					      options += '<option value="' + bihar[i] + '">' + bihar[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Chandigarh') {
						    var Chandigarh = ["Chandigarh"," Mani Marja"];
						   $(function() {
						  var options = '';
						  for (var i = 0; i < Chandigarh.length; i++) {
						      options += '<option value="' + Chandigarh[i] + '">' + Chandigarh[i] + '</option>';
						  }
						  $('#city').append(options);
						  $("#city option:contains(" + city +")").attr("selected", true);
						  });
						  }
					  
					  
					  if ($val=='Chhattisgarh') {
					    var Chhattisgarh = ["Ambikapur","Antagarh","Arang","Bacheli","Bagbahera","Bagicha","Baikunthpur","Balod","Balodabazar","Balrampur","Barpalli","Basana","Bastanar","Bastar","Bderajpur","Bemetara","Berla","Bhairongarh","Bhanupratappur","Bharathpur","Bhatapara","Bhilai","Bhilaigarh","Bhopalpatnam","Bijapur","Bilaspur","Bodla","Bokaband","Chandipara","Chhinagarh","Chhuriakala","Chingmut","Chuikhadan","Dabhara","Dallirajhara","Dantewada","Deobhog","Dhamda","Dhamtari","Dharamjaigarh","Dongargarh","Durg","Durgakondal","Fingeshwar","Gariaband","Garpa","Gharghoda","Gogunda","Ilamidi","Jagdalpur","Janjgir","Janjgir-Champa","Jarwa","Jashpur","Jashpurnagar","Kabirdham-Kawardha","Kanker","Kasdol","Kathdol","Kathghora","Kawardha","Keskal","Khairgarh","Kondagaon","Konta","Korba","Korea","Kota","Koyelibeda","Kuakunda","Kunkuri","Kurud","Lohadigundah","Lormi","Luckwada","Mahasamund","Makodi","Manendragarh","Manpur","Marwahi","Mohla","Mungeli","Nagri","Narainpur","Narayanpur","Neora","Netanar","Odgi","Padamkot","Pakhanjur","Pali","Pandaria","Pandishankar","Parasgaon","Pasan","Patan","Pathalgaon","Pendra","Pratappur","Premnagar","Raigarh","Raipur","Rajnandgaon","Rajpur","Ramchandrapur","Saraipali","Saranggarh","Sarona","Semaria","Shakti","Sitapur","Sukma","Surajpur","Surguja","Tapkara","Toynar","Udaipur","Uproda","Wadrainagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < Chhattisgarh.length; i++) {
					      options += '<option value="' + Chhattisgarh[i] + '">' + Chhattisgarh[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Dadra & Nagar Haveli') {
					    var dadra = ["Amal","Amli","Bedpa","Chikhli","Dadra & Nagar Haveli","Dahikhed","Dolara","Galonda","Kanadi","Karchond","Khadoli","Kharadpada","Kherabari","Kherdi","Kothar","Luari","Mashat","Rakholi","Rudana","Saili","Sili","Silvassa","Sindavni","Udva","Umbarkoi","Vansda","Vasona","Velugam"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < dadra.length; i++) {
					      options += '<option value="' + dadra[i] + '">' + dadra[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Daman and Diu') {
					    var daman = ["Brancavare","Dagasi","Daman","Diu","Magarvara","Nagwa","Pariali","Passo Covo"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < daman.length; i++) {
					      options += '<option value="' + daman[i] + '">' + daman[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Delhi') {
					    var delhi = ["Delhi","New Delhi","North Delhi","Noida","Patparganj","Sonabarsa","Tughlakabad"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < delhi.length; i++) {
					      options += '<option value="' + delhi[i] + '">' + delhi[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Goa') {
					    var goa = ["Canacona","Candolim","Chinchinim","Cortalim","Goa","Jua","Madgaon","Mahem","Mapuca","Marmagao","Panji","Ponda","Sanvordem","Terekhol"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < goa.length; i++) {
					      options += '<option value="' + goa[i] + '">' + goa[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Gujarat') {
					    var gujarat = ["Ahmedabad","Ahwa","Amod","Amreli","Anand","Anjar","Ankaleshwar","Babra","Balasinor","Banaskantha","Bansada","Bardoli","Bareja","Baroda","Barwala","Bayad","Bhachav","Bhanvad","Bharuch","Bhavnagar","Bhiloda","Bhuj","Billimora","Borsad","Botad","Chanasma","Chhota Udaipur","Chotila","Dabhoi","Dahod","Damnagar","Dang","Danta","Dasada","Dediapada","Deesa","Dehgam","Deodar","Devgadhbaria","Dhandhuka","Dhanera","Dharampur","Dhari","Dholka","Dhoraji","Dhrangadhra","Dhrol","Dwarka","Fortsongadh","Gadhada","Gandhi Nagar","Gariadhar","Godhra","Gogodar","Gondal","Halol","Halvad","Harij","Himatnagar","Idar","Jambusar","Jamjodhpur","Jamkalyanpur","Jamnagar","Jasdan","Jetpur","Jhagadia","Jhalod","Jodia","Junagadh","Junagarh","Kalawad","Kalol","Kapad Wanj","Keshod","Khambat","Khambhalia","Khavda","Kheda","Khedbrahma","Kheralu","Kodinar","Kotdasanghani","Kunkawav","Kutch","Kutchmandvi","Kutiyana","Lakhpat","Lakhtar","Lalpur","Limbdi","Limkheda","Lunavada","MMMangrol","Mahuva","Malia-Hatina","Maliya","Malpur","Manavadar","Mandvi","Mangrol","Mehmedabad","Mehsana","Miyagam","Modasa","Morvi","Muli","Mundra","Nadiad","Nakhatrana","Nalia","Narmada","Naswadi","Navasari","Nizar","Okha","Paddhari","Padra","Palanpur","Palitana","Panchmahals","Patan","Pavijetpur","Porbandar","Prantij","Radhanpur","Rahpar","Rajaula","Rajkot","Rajpipla","Ranavav","Sabarkantha","Sanand","Sankheda","Santalpur","Santrampur","Savarkundla","Savli","Sayan","Sayla","Shehra","Sidhpur","Sihor","Sojitra","Sumrasar","Surat","Surendranagar","Talaja","Thara","Tharad","Thasra","Una-Diu","Upleta","Vadgam","Vadodara","Valia","Vallabhipur","Valod","Valsad","Vanthali","Vapi","Vav","Veraval","Vijapur","Viramgam","Visavadar","Visnagar","Vyara","Waghodia","Wankaner"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < gujarat.length; i++) {
					      options += '<option value="' + gujarat[i] + '">' + gujarat[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Haryana') {
					    var haryana = ["Adampur Mandi","Ambala","Assandh","Bahadurgarh","Barara","Barwala","Bawal","Bawanikhera","Bhiwani","Charkhidadri","Cheeka","Chhachrauli","Dabwali","Ellenabad","Faridabad","Fatehabad","Ferojpur Jhirka","Gharaunda","Gohana","Gurgaon","Hansi","Hisar","Jagadhari","Jatusana","Jhajjar","Jind","Julana","Kaithal","Kalanaur","Kalanwali","Kalka","Karnal","Kosli","Kurukshetra","Loharu","Mahendragarh","Meham","Mewat","Mohindergarh","Naraingarh","Narnaul","Narwana","Nilokheri","Nuh","Palwal","Panchkula","Panipat","Pehowa","Ratia","Rewari","Rohtak","Safidon","Sirsa","Siwani","Sonipat","Tohana","Tohsam","Yamunanagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < haryana.length; i++) {
					      options += '<option value="' + haryana[i] + '">' + haryana[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Himachal Pradesh') {
					    var himachal = ["Amb","Arki","Banjar","Bharmour","Bilaspur","Chamba","Churah","Dalhousie","Dehra Gopipur","Hamirpur","Jogindernagar","Kalpa","Kangra","Kinnaur","Kullu","Lahaul","Mandi","Nahan","Nalagarh","Nirmand","Nurpur","Palampur","Pangi","Paonta","Pooh","Rajgarh","Rampur Bushahar","Rohru","Shimla","Sirmaur","Solan","Spiti","Sundernagar","Theog","Udaipur","Una"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < himachal.length; i++) {
					      options += '<option value="' + himachal[i] + '">' + himachal[i] + '</option>';
					  }
					 $('#city').append(options);
					 $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Jammu and Kashmir') {
					    var jammu = ["Akhnoor","Anantnag","Badgam","Bandipur","Baramulla","Basholi","Bedarwah","Budgam","Doda","Gulmarg","Jammu","Kalakot","Kargil","Karnah","Kathua","Kishtwar","Kulgam","Kupwara","Leh","Mahore","Nagrota","Nobra","Nowshera","Nyoma","Padam","Pahalgam","Patnitop","Poonch","Pulwama","Rajouri","Ramban","Ramnagar","Reasi","Samba","Srinagar","Udhampur","Vaishno Devi"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < jammu.length; i++) {
					      options += '<option value="' + jammu[i] + '">' + jammu[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Jharkhand') {
					    var jharkhand = ["Bagodar","Baharagora","Balumath","Barhi","Barkagaon","Barwadih","Basia","Bermo","Bhandaria","Bhawanathpur","Bishrampur","Bokaro","Bolwa","Bundu","Chaibasa","Chainpur","Chakardharpur","Chandil","Chatra","Chavparan","Daltonganj","Deoghar","Dhanbad","Dumka","Dumri","Garhwa","Garu","Ghaghra","Ghatsila","Giridih","Godda","Gomia","Govindpur","Gumla","Hazaribagh","Hunterganj","Ichak","Itki","Jagarnathpur","Jamshedpur","Jamtara","Japla","Jharmundi","Jhinkpani","Jhumaritalaiya","Kathikund","Kharsawa","Khunti","Koderma","Kolebira","Latehar","Lohardaga","Madhupur","Mahagama","Maheshpur Raj","Mandar","Mandu","Manoharpur","Muri","Nagarutatri","Nala","Noamundi","Pakur","Palamu","Palkot","Patan","Rajdhanwar","Rajmahal","Ramgarh","Ranchi","Sahibganj","Saraikela","Simaria","Simdega","Singhbhum","Tisri","Torpa"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < jharkhand.length; i++) {
					      options += '<option value="' + jharkhand[i] + '">' + jharkhand[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Karnataka') {
					    var karnataka = ["Afzalpur","Ainapur","Aland","Alur","Anekal","Ankola","Arsikere","Athani","Aurad","Bableshwar","Badami","Bagalkot","Bagepalli","Bailhongal","Bangalore","Bangalore Rural","Bangarpet","Bantwal","Basavakalyan","Basavanabagewadi","Basavapatna","Belgaum","Bellary","Belthangady","Belur","Bhadravati","Bhalki","Bhatkal","Bidar","Bijapur","Biligi","Chadchan","Challakere","Chamrajnagar","Channagiri","Channapatna","Channarayapatna","Chickmagalur","Chikballapur","Chikkaballapur","Chikkanayakanahalli","Chikkodi","Chikmagalur","Chincholi","Chintamani","Chitradurga","Chittapur","Cowdahalli","Davanagere","Deodurga","Devangere","Devarahippargi","Dharwad","Doddaballapur","Gadag","Gangavathi","Gokak","Gowribdanpur","Gubbi","Gulbarga","Gundlupet","HBHalli","HD Kote","Haliyal","Hampi","Hangal","Harapanahalli","Hassan","Haveri","Hebri","Hirekerur","Hiriyur","Holalkere","Holenarsipur","Honnali","Honnavar","Hosadurga","Hosakote","Hosanagara","Hospet","Hubli","Hukkeri","Humnabad","Hungund","Hunsagi","Hunsur","Huvinahadagali","Indi","Jagalur","Jamkhandi","Jewargi","Joida","KR Nagar","Kadur","Kalghatagi","Kamalapur","Kanakapura","Kannada","Kargal","Karkala","Karwar","Khanapur","Kodagu","Kolar","Kollegal","Koppa","Koppal","Koratageri","Krishnarajapet","Kudligi","Kumta","Kundapur","Kundgol","Kunigal","Kurugodu","Kustagi","Lingsugur","Madikeri","Madugiri","Malavalli","Malur","Mandya","Mangalore","Manipal","Manvi","Mashal","Molkalmuru","Mudalgi","Muddebihal","Mudhol","Mudigere","Mulbagal","Mundagod","Mundargi","Murugod","Mysore","Nagamangala","Nanjangud","Nargund","Narsimrajapur","Navalgund","Nelamangala","Nimburga","Pandavapura","Pavagada","Puttur","Raibag","Raichur","Ramdurg","Ranebennur","Ron","Sagar","Sakleshpur","Salkani","Sandur","Saundatti","Savanur","Sedam","Shahapur","Shankarnarayana","Shikaripura","Shimoga","Shirahatti","Shorapur","Siddapur","Sidlaghatta","Sindagi","Sindhanur","Sira","Sirsi","Siruguppa","Somwarpet","Sorab","Sringeri","Sriniwaspur","Srirangapatna","Sullia","T Narsipur","Tallak","Tarikere","Telgi","Thirthahalli","Tiptur","Tumkur","Turuvekere","Udupi","Virajpet","Wadi","Yadgiri","Yelburga","Yellapur"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < karnataka.length; i++) {
					      options += '<option value="' + karnataka[i] + '">' + karnataka[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Kerala') {
					    var kerala = ["Adimaly","Adoor","Agathy","Alappuzha","Alathur","Alleppey","Alwaye","Amini","Androth","Attingal","Badagara","Bitra","Calicut","Cannanore","Chetlet","Ernakulam","Idukki","Irinjalakuda","Kadamath","Kalpeni","Kalpetta","Kanhangad","Kanjirapally","Kannur","Karungapally","Kasargode","Kavarathy","Kiltan","Kochi","Koduvayur","Kollam","Kottayam","Kovalam","Kozhikode","Kunnamkulam","Malappuram","Mananthodi","Manjeri","Mannarghat","Mavelikkara","Minicoy","Munnar","Muvattupuzha","Nedumandad","Nedumgandam","Nilambur","Palai","Palakkad","Palghat","Pathaanamthitta","Pathanamthitta","Payyanur","Peermedu","Perinthalmanna","Perumbavoor","Punalur","Quilon","Ranni","Shertallai","Shoranur","Taliparamba","Tellicherry","Thiruvananthapuram","Thodupuzha","Thrissur","Tirur","Tiruvalla","Trichur","Trivandrum","Uppala","Vadakkanchery","Vikom","Wayanad"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < kerala.length; i++) {
					      options += '<option value="' + kerala[i] + '">' + kerala[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Lakshadweep') {
						    var Lakshadweep = ["Agatti Island","Bingaram Island","Bitra Island","Chetlat Island","Kadmat Island","Kalpeni Island","Kavaratti Island","Kiltan Island","Lakshadweep Sea","Minicoy Island","North Island","South Island"];
						   $(function() {
						  var options = '';
						  for (var i = 0; i < Lakshadweep.length; i++) {
						      options += '<option value="' + Lakshadweep[i] + '">' + Lakshadweep[i] + '</option>';
						  }
						  $('#city').append(options);
						  $("#city option:contains(" + city +")").attr("selected", true);
						  });
						  }
					  
					  if ($val=='Madhya Pradesh') {
					    var mp = ["Agar","Ajaigarh","Alirajpur","Amarpatan","Amarwada","Ambah","Anuppur","Arone","Ashoknagar","Ashta","Atner","Babaichichli","Badamalhera","Badarwsas","Badnagar","Badnawar","Badwani","Bagli","Baihar","Balaghat","Baldeogarh","Baldi","Bamori","Banda","Bandhavgarh","Bareli","Baroda","Barwaha","Barwani","Batkakhapa","Begamganj","Beohari","Berasia","Berchha","Betul","Bhainsdehi","Bhander","Bhanpura","Bhikangaon","Bhimpur","Bhind","Bhitarwar","Bhopal","Biaora","Bijadandi","Bijawar","Bijaypur","Bina","Birsa","Birsinghpur","Budhni","Burhanpur","Buxwaha","Chachaura","Chanderi","Chaurai","Chhapara","Chhatarpur","Chhindwara","Chicholi","Chitrangi","Churhat","Dabra","Damoh","Datia","Deori","Deosar","Depalpur","Dewas","Dhar","Dharampuri","Dindori","Gadarwara","Gairatganj","Ganjbasoda","Garoth","Ghansour","Ghatia","Ghatigaon","Ghorandogri","Ghughari","Gogaon","Gohad","Goharganj","Gopalganj","Gotegaon","Gourihar","Guna","Gunnore","Gwalior","Gyraspur","Hanumana","Harda","Harrai","Harsud","Hatta","Hoshangabad","Ichhawar","Indore","Isagarh","Itarsi","Jabalpur","Jabera","Jagdalpur","Jaisinghnagar","Jaithari","Jaitpur","Jaitwara","Jamai","Jaora","Jatara","Jawad","Jhabua","Jobat","Jora","Kakaiya","Kannod","Kannodi","Karanjia","Kareli","Karera","Karhal","Karpa","Kasrawad","Katangi","Katni","Keolari","Khachrod","Khajuraho","Khakner","Khalwa","Khandwa","Khaniadhana","Khargone","Khategaon","Khetia","Khilchipur","Khirkiya","Khurai","Kolaras","Kotma","Kukshi","Kundam","Kurwai","Kusmi","Laher","Lakhnadon","Lamta","Lanji","Lateri","Laundi","Maheshwar","Mahidpurcity","Maihar","Majhagwan","Majholi","Malhargarh","Manasa","Manawar","Mandla","Mandsaur","Manpur","Mauganj","Mawai","Mehgaon","Mhow","Morena","Multai","Mungaoli","Nagod","Nainpur","Narsingarh","Narsinghpur","Narwar","Nasrullaganj","Nateran","Neemuch","Niwari","Niwas","Nowgaon","Pachmarhi","Pandhana","Pandhurna","Panna","Parasia","Patan","Patera","Patharia","Pawai","Petlawad","Pichhore","Piparia","Pohari","Prabhapattan","Punasa","Pushprajgarh","Raghogarh","Raghunathpur","Rahatgarh","Raisen","Rajgarh","Rajpur","Ratlam","Rehli","Rewa","Sabalgarh","Sagar","Sailana","Sanwer","Sarangpur","Sardarpur","Satna","Saunsar","Sehore","Sendhwa","Seondha","Seoni","Seonimalwa","Shahdol","Shahnagar","Shahpur","Shajapur","Sheopur","Sheopurkalan","Shivpuri","Shujalpur","Sidhi","Sihora","Silwani","Singrauli","Sirmour","Sironj","Sitamau","Sohagpur","Sondhwa","Sonkatch","Susner","Tamia","Tarana","Tendukheda","Teonthar","Thandla","Tikamgarh","Timarani","Udaipura","Ujjain","Umaria","Umariapan","Vidisha","Vijayraghogarh","Waraseoni","Zhirnia"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < mp.length; i++) {
					      options += '<option value="' + mp[i] + '">' + mp[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Maharashtra') {
					    var maharashtra = ["Achalpur","Aheri","Ahmednagar","Ahmedpur","Ajara","Akkalkot","Akola","Akole","Akot","Alibagh","Amagaon","Amalner","Ambad","Ambejogai","Amravati","Arjuni Merogaon","Arvi","Ashti","Atpadi","Aurangabad","Ausa","Babhulgaon","Balapur","Baramati","Barshi Takli","Barsi","Basmatnagar","Bassein","Beed","Bhadrawati","Bhamregadh","Bhandara","Bhir","Bhiwandi","Bhiwapur","Bhokar","Bhokardan","Bhoom","Bhor","Bhudargad","Bhusawal","Billoli","Brahmapuri","Buldhana","Butibori","Chalisgaon","Chamorshi","Chandgad","Chandrapur","Chandur","Chanwad","Chhikaldara","Chikhali","Chinchwad","Chiplun","Chopda","Chumur","Dahanu","Dapoli","Darwaha","Daryapur","Daund","Degloor","Delhi Tanda","Deogad","Deolgaonraja","Deori","Desaiganj","Dhadgaon","Dhanora","Dharani","Dhiwadi","Dhule","Dhulia","Digras","Dindori","Edalabad","Erandul","Etapalli","Gadhchiroli","Gadhinglaj","Gaganbavada","Gangakhed","Gangapur","Gevrai","Ghatanji","Golegaon","Gondia","Gondpipri","Goregaon","Guhagar","Hadgaon","Hatkangale","Hinganghat","Hingoli","Hingua","Igatpuri","Indapur","Islampur","Jalgaon","Jalna","Jamkhed","Jamner","Jath","Jawahar","Jintdor","Junnar","Kagal","Kaij","Kalamb","Kalamnuri","Kallam","Kalmeshwar","Kalwan","Kalyan","Kamptee","Kandhar","Kankavali","Kannad","Karad","Karjat","Karmala","Katol","Kavathemankal","Kedgaon","Khadakwasala","Khamgaon","Khed","Khopoli","Khultabad","Kinwat","Kolhapur","Kopargaon","Koregaon","Kudal","Kuhi","Kurkheda","Kusumba","Lakhandur","Langa","Latur","Lonar","Lonavala","Madangad","Madha","Mahabaleshwar","Mahad","Mahagaon","Mahasala","Mahaswad","Malegaon","Malgaon","Malgund","Malkapur","Malsuras","Malwan","Mancher","Mangalwedha","Mangaon","Mangrulpur","Manjalegaon","Manmad","Maregaon","Mehda","Mekhar","Mohadi","Mohol","Mokhada","Morshi","Mouda","Mukhed","Mul","Mumbai","Murbad","Murtizapur","Murud","Nagbhir","Nagpur","Nahavara","Nanded","Nandgaon","Nandnva","Nandurbar","Narkhed","Nashik","Navapur","Ner","Newasa","Nilanga","Niphad","Omerga","Osmanabad","Pachora","Paithan","Palghar","Pali","Pandharkawada","Pandharpur","Panhala","Paranda","Parbhani","Parner","Parola","Parseoni","Partur","Patan","Pathardi","Pathari","Patoda","Pauni","Peint","Pen","Phaltan","Pimpalner","Pirangut","Poladpur","Pune","Pusad","Pusegaon","Radhanagar","Rahuri","Raigad","Rajapur","Rajgurunagar","Rajura","Ralegaon","Ramtek","Ratnagiri","Raver","Risod","Roha","Sakarwadi","Sakoli","Sakri","Salekasa","Samudrapur","Sangamner","Sanganeshwar","Sangli","Sangola","Sanguem","Saoner","Saswad","Satana","Satara","Sawantwadi","Seloo","Shahada","Shahapur","Shahuwadi","Shevgaon","Shirala","Shirol","Shirpur","Shirur","Shirwal","Sholapur","Shri Rampur","Shrigonda","Shrivardhan","Sillod","Sinderwahi","Sindhudurg","Sindkheda","Sindkhedaraja","Sinnar","Sironcha","Soyegaon","Surgena","Talasari","Talegaon SJi Pant","Taloda","Tasgaon","Thane","Tirora","Tiwasa","Trimbak","Tuljapur","Tumsar","Udgir","Umarkhed","Umrane","Umrer","Urlikanchan","Vaduj","Velhe","Vengurla","Vijapur","Vita","Wada","Wai","Walchandnagar","Wani","Wardha","Warlydwarud","Warora","Washim","Wathar","Yavatmal","Yawal","Yeola","Yeotmal"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < maharashtra.length; i++) {
					      options += '<option value="' + maharashtra[i] + '">' + maharashtra[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Manipur') {
					    var manipur = ["Bishnupur","Chakpikarong","Chandel","Chattrik","Churachandpur","Imphal","Jiribam","Kakching","Kalapahar","Mao","Mulam","Parbung","Sadarhills","Saibom","Sempang","Senapati","Sochumer","Taloulong","Tamenglong","Thinghat","Thoubal","Ukhrul"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < manipur.length; i++) {
					      options += '<option value="' + manipur[i] + '">' + manipur[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Meghalaya') {
					    var meghalaya = ["Amlaren","Baghmara","Cherrapunjee","Dadengiri","Garo Hills","Jaintia Hills","Jowai","Khasi Hills","Khliehriat","Mariang","Mawkyrwat","Nongpoh","Nongstoin","Resubelpara","Ri Bhoi","Shillong","Tura","Williamnagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < meghalaya.length; i++) {
					      options += '<option value="' + meghalaya[i] + '">' + meghalaya[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Mizoram') {
					    var mizoram = ["Aizawl","Champhai","Demagiri","Kolasib","Lawngtlai","Lunglei","Mamit","Saiha","Serchhip"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < mizoram.length; i++) {
					      options += '<option value="' + mizoram[i] + '">' + mizoram[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Nagaland') {
					    var nagaland = ["Dimapur","Jalukie","Kiphire","Kohima","Mokokchung","Mon","Phek","Tuensang","Wokha","Zunheboto"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < nagaland.length; i++) {
					      options += '<option value="' + nagaland[i] + '">' + nagaland[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Orissa') {
					    var orissa = ["Anandapur","Angul","Anugul","Aska","Athgarh","Athmallik","Attabira","Bagdihi","Balangir","Balasore","Baleswar","Baliguda","Balugaon","Banaigarh","Bangiriposi","Barbil","Bargarh","Baripada","Barkot","Basta","Berhampur","Betanati","Bhadrak","Bhanjanagar","Bhawanipatna","Bhubaneswar","Birmaharajpur","Bisam Cuttack","Boriguma","Boudh","Buguda","Chandbali","Chhatrapur","Chhendipada","Cuttack","Daringbadi","Daspalla","Deodgarh","Deogarh","Dhanmandal","Dharamgarh","Dhenkanal","Digapahandi","Dunguripali","G Udayagiri","Gajapati","Ganjam","Ghatgaon","Gudari","Gunupur","Hemgiri","Hindol","Jagatsinghapur","Jajpur","Jamankira","Jashipur","Jayapatna","Jeypur","Jharigan","Jharsuguda","Jujumura","Kalahandi","Kalimela","Kamakhyanagar","Kandhamal","Kantabhanji","Kantamal","Karanjia","Kashipur","Kendrapara","Kendujhar","Keonjhar","Khalikote","Khordha","Khurda","Komana","Koraput","Kotagarh","Kuchinda","Lahunipara","Laxmipur","M Rampur","Malkangiri","Mathili","Mayurbhanj","Mohana","Motu","Nabarangapur","Naktideul","Nandapur","Narlaroad","Narsinghpur","Nayagarh","Nimapara","Nowparatan","Nowrangapur","Nuapada","Padampur","Paikamal","Palla Hara","Papadhandi","Parajang","Pardip","Parlakhemundi","Patnagarh","Pattamundai","Phiringia","Phulbani","Puri","Puruna Katak","R Udayigiri","Rairakhol","Rairangpur","Rajgangpur","Rajkhariar","Rayagada","Rourkela","Sambalpur","Sohela","Sonapur","Soro","Subarnapur","Sunabeda","Sundergarh","Surada","T Rampur","Talcher","Telkoi","Titlagarh","Tumudibandha","Udala","Umerkote"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < orissa.length; i++) {
					      options += '<option value="' + orissa[i] + '">' + orissa[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Pondicherry') {
						    var Pondicherry = ["Bahur","Karaikal","Mahe","Pondicherry","Purnankuppam","Valudavur","Villianur","Yanam"];
						   $(function() {
						  var options = '';
						  for (var i = 0; i < Pondicherry.length; i++) {
						      options += '<option value="' + Pondicherry[i] + '">' + Pondicherry[i] + '</option>';
						  }
						  $('#city').append(options);
						  $("#city option:contains(" + city +")").attr("selected", true);
						  });
						  }
					  
					  
					  
					  if ($val=='Punjab') {
					    var punjab = ["Abohar","Ajnala","Amritsar","Balachaur","Barnala","Batala","Bathinda","Chandigarh","Dasua","Dinanagar","Faridkot","Fatehgarh Sahib","Fazilka","Ferozepur","Garhashanker","Goindwal","Gurdaspur","Guruharsahai","Hoshiarpur","Jagraon","Jalandhar","Jugial","Kapurthala","Kharar","Kotkapura","Ludhiana","Malaut","Malerkotla","Mansa","Moga","Muktasar","Nabha","Nakodar","Nangal","Nawanshahar","Nawanshahr","Pathankot","Patiala","Patti","Phagwara","Phillaur","Phulmandi","Quadian","Rajpura","Raman","Rayya","Ropar","Rupnagar","Samana","Samrala","Sangrur","Sardulgarh","Sarhind","SAS Nagar","Sultanpur Lodhi","Sunam","Tanda Urmar","Taran Taran","Zira"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < punjab.length; i++) {
					      options += '<option value="' + punjab[i] + '">' + napunjabgaland[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Rajasthan') {
					    var rajasthan = ["Abu Road","Ahore","Ajmer","Aklera","Alwar","Amber","Amet","Anupgarh","Asind","Aspur","Atru","Bagidora","Bali","Bamanwas","Banera","Bansur","Banswara","Baran","Bari","Barisadri","Barmer","Baseri","Bassi","Baswa","Bayana","Beawar","Begun","Behror","Bhadra","Bharatpur","Bhilwara","Bhim","Bhinmal","Bikaner","Bilara","Bundi","Chhabra","Chhipaborad","Chirawa","Chittorgarh","Chohtan","Churu","Dantaramgarh","Dausa","Deedwana","Deeg","Degana","Deogarh","Deoli","Desuri","Dhariawad","Dholpur","Digod","Dudu","Dungarpur","Dungla","Fatehpur","Gangapur","Gangdhar","Gerhi","Ghatol","Girwa","Gogunda","Hanumangarh","Hindaun","Hindoli","Hurda","Jahazpur","Jaipur","Jaisalmer","Jalore","Jhalawar","Jhunjhunu","Jodhpur","Kaman","Kapasan","Karauli","Kekri","Keshoraipatan","Khandar","Kherwara","Khetri","Kishanganj","Kishangarh","Kishangarhbas","Kolayat","Kota","Kotputli","Kotra","Kotri","Kumbalgarh","Kushalgarh","Ladnun","Ladpura","Lalsot","Laxmangarh","Lunkaransar","Mahuwa","Malpura","Malvi","Mandal","Mandalgarh","Mandawar","Mangrol","Marwar-Jn","Merta","Nadbai","Nagaur","Nainwa","Nasirabad","Nathdwara","Nawa","Neem Ka Thana","Newai","Nimbahera","Nohar","Nokha","Onli","Osian","Pachpadara","Pachpahar","Padampur","Pali","Parbatsar","Phagi","Phalodi","Pilani","Pindwara","Pipalda","Pirawa","Pokaran","Pratapgarh","Raipur","Raisinghnagar","Rajgarh","Rajsamand","Ramganj Mandi","Ramgarh","Rashmi","Ratangarh","Reodar","Rupbas","Sadulshahar","Sagwara","Sahabad","Salumber","Sanchore","Sangaria","Sangod","Sapotra","Sarada","Sardarshahar","Sarwar","Sawai Madhopur","Shahapura","Sheo","Sheoganj","Shergarh","Sikar","Sirohi","Siwana","Sojat","Sri Dungargarh","Sri Ganganagar","Sri Karanpur","Sri Madhopur","Sujangarh","Taranagar","Thanaghazi","Tibbi","Tijara","Todaraisingh","Tonk","Udaipur","Udaipurwati","Uniayara","Vallabhnagar","Viratnagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < rajasthan.length; i++) {
					      options += '<option value="' + rajasthan[i] + '">' + rajasthan[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Sikkim') {
					    var sikkim = ["Barmiak","Be","Bhurtuk","Chhubakha","Chidam","Chubha","Chumikteng","Dentam","Dikchu","Dzongri","Gangtok","Gauzing","Gyalshing","Hema","Kerung","Lachen","Lachung","Lema","Lingtam","Lungthu","Mangan","Namchi","Namthang","Nanga","Nantang","Naya Bazar","Padamachen","Pakhyong","Pemayangtse","Phensang","Rangli","Rinchingpong","Sakyong","Samdong","Singtam","Siniolchu","Sombari","Soreng","Sosing","Tekhug","Temi","Tsetang","Tsomgo","Tumlong","Yangang","Yumtang"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < sikkim.length; i++) {
					      options += '<option value="' + sikkim[i] + '">' + sikkim[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Tamil Nadu') {
					    var tn = ["Ambasamudram","Anamali","Arakandanallur","Arantangi","Aravakurichi","Ariyalur","Arkonam","Arni","Aruppukottai","Attur","Avanashi","Batlagundu","Bhavani","Chengalpattu","Chengam","Chennai","Chidambaram","Chingleput","Coimbatore","Courtallam","Cuddalore","Cumbum","Denkanikoitah","Devakottai","Dharampuram","Dharmapuri","Dindigul","Erode","Gingee","Gobichettipalayam","Gudalur","Gudiyatham","Harur","Hosur","Jayamkondan","Kallkurichi","Kanchipuram","Kangayam","Kanyakumari","Karaikal","Karaikudi","Karur","Keeranur","Kodaikanal","Kodumudi","Kotagiri","Kovilpatti","Krishnagiri","Kulithalai","Kumbakonam","Kuzhithurai","Madurai","Madurantgam","Manamadurai","Manaparai","Mannargudi","Mayiladuthurai","Mayiladutjurai","Mettupalayam","Metturdam","Mudukulathur","Mulanur","Musiri","Nagapattinam","Nagarcoil","Namakkal","Nanguneri","Natham","Neyveli","Nilgiris","Oddanchatram","Omalpur","Ootacamund","Ooty","Orathanad","Palacode","Palani","Palladum","Papanasam","Paramakudi","Pattukottai","Perambalur","Perundurai","Pollachi","Polur","Pondicherry","Ponnamaravathi","Ponneri","Pudukkottai","Rajapalayam","Ramanathapuram","Rameshwaram","Ranipet","Rasipuram","Salem","Sankagiri","Sankaran","Sathiyamangalam","Sivaganga","Sivakasi","Sriperumpudur","Srivaikundam","Tenkasi","Thanjavur","Theni","Thirumanglam","Thiruraipoondi","Thoothukudi","Thuraiyure","Tindivanam","Tiruchendur","Tiruchengode","Tiruchirappalli","Tirunelvelli","Tirupathur","Tirupur","Tiruttani","Tiruvallur","Tiruvannamalai","Tiruvarur","Tiruvellore","Tiruvettipuram","Trichy","Tuticorin","Udumalpet","Ulundurpet","Usiliampatti","Uthangarai","Valapady","Valliyoor","Vaniyambadi","Vedasandur","Vellore","Velur","Vilathikulam","Villupuram","Virudhachalam","Virudhunagar","Wandiwash","Yercaud"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < tn.length; i++) {
					      options += '<option value="' + tn[i] + '">' + tn[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Telangana') {
					    var telangana = ["Adilabad","Hyderabad","Karimnagar","Mahbubnagar","Medak","Nalgonda","Nizamabad","Ranga Reddy","Warangal"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < telangana.length; i++) {
					      options += '<option value="' + telangana[i] + '">' + telangana[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Tripura') {
					    var tripura = ["Agartala","Ambasa","Bampurbari","Belonia","Dhalai","Dharam Nagar","Kailashahar","Kamal Krishnabari","Khopaiyapara","Khowai","Phuldungsei","Radha Kishore Pur","Tripura"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < tripura.length; i++) {
					      options += '<option value="' + tripura[i] + '">' + tripura[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Uttar Pradesh') {
					    var up = ["Achhnera","Agra","Akbarpur","Aliganj","Aligarh","Allahabad","Ambedkar Nagar","Amethi","Amiliya","Amroha","Anola","Atrauli","Auraiya","Azamgarh","Baberu","Badaun","Baghpat","Bagpat","Baheri","Bahraich","Ballia","Balrampur","Banda","Bansdeeh","Bansgaon","Bansi","Barabanki","Bareilly","Basti","Bhadohi","Bharthana","Bharwari","Bhogaon","Bhognipur","Bidhuna","Bijnore","Bikapur","Bilari","Bilgram","Bilhaur","Bindki","Bisalpur","Bisauli","Biswan","Budaun","Budhana","Bulandshahar","Bulandshahr","Capianganj","Chakia","Chandauli","Charkhari","Chhata","Chhibramau","Chirgaon","Chitrakoot","Chunur","Dadri","Dalmau","Dataganj","Debai","Deoband","Deoria","Derapur","Dhampur","Domariyaganj","Dudhi","Etah","Etawah","Faizabad","Farrukhabad","Fatehpur","Firozabad","Garauth","Garhmukteshwar","Gautam Buddha Nagar","Ghatampur","Ghaziabad","Ghazipur","Ghosi","Gonda","Gorakhpur","Gunnaur","Haidergarh","Hamirpur","Hapur","Hardoi","Harraiya","Hasanganj","Hasanpur","Hathras","Jalalabad","Jalaun","Jalesar","Jansath","Jarar","Jasrana","Jaunpur","Jhansi","Jyotiba Phule Nagar","Kadipur","Kaimganj","Kairana","Kaisarganj","Kalpi","Kannauj","Kanpur","Karchhana","Karhal","Karvi","Kasganj","Kaushambi","Kerakat","Khaga","Khair","Khalilabad","Kheri","Konch","Kumaon","Kunda","Kushinagar","Lalganj","Lalitpur","Lucknow","Machlishahar","Maharajganj","Mahoba","Mainpuri","Malihabad","Mariyahu","Math","Mathura","Mau","Maudaha","Maunathbhanjan","Mauranipur","Mawana","Meerut","Mehraun","Meja","Mirzapur","Misrikh","Modinagar","Mohamdabad","Mohamdi","Moradabad","Musafirkhana","Muzaffarnagar","Nagina","Najibabad","Nakur","Nanpara","Naraini","Naugarh","Nawabganj","Nighasan","Noida","Orai","Padrauna","Pahasu","Patti","Pharenda","Phoolpur","Phulpur","Pilibhit","Pitamberpur","Powayan","Pratapgarh","Puranpur","Purwa","Raibareli","Rampur","Ramsanehi Ghat","Rasara","Rath","Robertsganj","Sadabad","Safipur","Sagri","Saharanpur","Sahaswan","Sahjahanpur","Saidpur","Salempur","Salon","Sambhal","Sandila","Sant Kabir Nagar","Sant Ravidas Nagar","Sardhana","Shahabad","Shahganj","Shahjahanpur","Shikohabad","Shravasti","Siddharthnagar","Sidhauli","Sikandra Rao","Sikandrabad","Sitapur","Siyana","Sonbhadra","Soraon","Sultanpur","Tanda","Tarabganj","Tilhar","Unnao","Utraula","Varanasi","Zamania"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < up.length; i++) {
					      options += '<option value="' + up[i] + '">' + up[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Uttaranchal') {
					    var uttarakhand = ["Almora","Bageshwar","Bhatwari","Chakrata","Chamoli","Champawat","Dehradun","Deoprayag","Dharchula","Dunda","Haldwani","Haridwar","Joshimath","Karan Prayag","Kashipur","Khatima","Kichha","Lansdown","Munsiari","Mussoorie","Nainital","Pantnagar","Partapnagar","Pauri Garhwal","Pithoragarh","Purola","Rajgarh","Ranikhet","Roorkee","Rudraprayag","Tehri Garhwal","Udham Singh Nagar","Ukhimath","Uttarkashi"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < uttarakhand.length; i++) {
					      options += '<option value="' + uttarakhand[i] + '">' + uttarakhand[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='West Bengal') {
					    var wb = ["Adra","Alipurduar","Amlagora","Arambagh","Asansol","Balurghat","Bankura","Bardhaman","Basirhat","Berhampur","Bethuadahari","Birbhum","Birpara","Bishanpur","Bolpur","Bongoan","Bulbulchandi","Burdwan","Calcutta","Canning","Champadanga","Contai","Cooch Behar","Daimond Harbour","Dalkhola","Dantan","Darjeeling","Dhaniakhali","Dhuliyan","Dinajpur","Dinhata","Durgapur","Gangajalghati","Gangarampur","Ghatal","Guskara","Habra","Haldia","Harirampur","Harishchandrapur","Hooghly","Howrah","Islampur","Jagatballavpur","Jalpaiguri","Jhalda","Jhargram","Kakdwip","Kalchini","Kalimpong","Kalna","Kandi","Karimpur","Katwa","Kharagpur","Khatra","Krishnanagar","Mal Bazar","Malda","Manbazar","Mathabhanga","Medinipur","Mekhliganj","Mirzapur","Murshidabad","Nadia","Nagarakata","Nalhati","Nayagarh","Parganas","Purulia","Raiganj","Rampur Hat","Ranaghat","Seharabazar","Siliguri","Suri","Takipur","Tamluk"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < wb.length; i++) {
					      options += '<option value="' + wb[i] + '">' + wb[i] + '</option>';
					  }
					  $('#city').append(options);
					  $("#city option:contains(" + city +")").attr("selected", true);
					  });
					  }
					  
					  
					  
			}
			else
			{
				$val=pstate;
				
				if($val=='Andaman & Nicobar') {
					   var andman = ["Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita ,Alipur","Andaman Island","Anderson Island","Arainj-Laka-Punga","Austinabad","Bamboo Flat","Barren Island","Beadonabad","Betapur","Bindraban","Bonington","Brookesabad","Cadell Point","Calicut","Chetamale","Cinque Islands","Defence Island","Digilpur","Dolyganj","Flat Island","Geinyale","Great Coco Island","Haddo","Havelock Island","Henry Lawrence Island","Herbertabad","Hobdaypur","Ilichar","Ingoie","Inteview Island","Jangli Ghat","Jhon Lawrence Island","Karen","Kartara","KYD Islannd","Landfall Island","Little Andmand","Little Coco Island","Long Island","Maimyo","Malappuram","Manglutan","Manpur","Mitha Khari","Neill Island","Nicobar Island","North Brother Island","North Passage Island","North Sentinel Island","Nothen Reef Island","Outram Island","Pahlagaon","Palalankwe","Passage Island","Phaiapong","Phoenix Island","Port Blair","Preparis Island","Protheroepur","Rangachang","Rongat","Rutland Island","Sabari","Saddle Peak","Shadipur","Smith Island","Sound Island","South Sentinel Island","Spike Island","Tarmugli Island","Taylerabad","Titaije","Toibalawe","Tusonabad","West Island","Wimberleyganj","Yadita"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < andman.length; i++) {
					      options += '<option value="' + andman[i] + '">' + andman[i] + '</option>';
					  }
					  
					  
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
				
				
				
				if($val=='Andhra Pradesh') {
					   var andhra = ["Achampet","Adilabad","Adoni","Alampur","Allagadda","Alur","Amalapuram","Amangallu","Anakapalle","Anantapur","Andole","Araku","Armoor","Asifabad","Aswaraopet","Atmakur","B Kothakota","Badvel","Banaganapalle","Bandar","Bangarupalem","Banswada","Bapatla","Bellampalli","Bhadrachalam","Bhainsa","Bheemunipatnam","Bhimadole","Bhimavaram","Bhongir","Bhooragamphad","Boath","Bobbili","Bodhan","Chandoor","Chavitidibbalu","Chejerla","Chepurupalli","Cherial","Chevella","Chinnor","Chintalapudi","Chintapalle","Chirala","Chittoor","Chodavaram","Cuddapah","Cumbum","Darsi","Devarakonda","Dharmavaram","Dichpalli","Divi","Donakonda","Dronachalam","East Godavari","Eluru","Eturnagaram","Gadwal","Gajapathinagaram","Gajwel","Garladinne","Giddalur","Godavari","Gooty","Gudivada","Gudur","Guntur","Hindupur","Hunsabad","Huzurabad","Huzurnagar","Hyderabad","Ibrahimpatnam","Jaggayyapet","Jagtial","Jammalamadugu","Jangaon","Jangareddygudem","Jannaram","Kadiri","Kaikaluru","Kakinada","Kalwakurthy","Kalyandurg","Kamalapuram","Kamareddy","Kambadur","Kanaganapalle","Kandukuru","Kanigiri","Karimnagar","Kavali","Khammam","Khanapur (AP)","Kodangal","Koduru","Koilkuntla","Kollapur","Kothagudem","Kovvur","Krishna","Krosuru","Kuppam","Kurnool","Lakkireddipalli","Madakasira","Madanapalli","Madhira","Madnur","Mahabubabad","Mahabubnagar","Mahadevapur","Makthal","Mancherial","Mandapeta","Mangalagiri","Manthani","Markapur","Marturu","Medachal","Medak","Medarmetla","Metpalli","Mriyalguda","Mulug","Mylavaram","Nagarkurnool","Nalgonda","Nallacheruvu","Nampalle","Nandigama","Nandikotkur","Nandyal","Narasampet","Narasaraopet","Narayanakhed","Narayanpet","Narsapur","Narsipatnam","Nazvidu","Nelloe","Nellore","Nidamanur","Nirmal","Nizamabad","Nuguru","Ongole","Outsarangapalle","Paderu","Pakala","Palakonda","Paland","Palmaneru","Pamuru","Pargi","Parkal","Parvathipuram","Pathapatnam","Pattikonda","Peapalle","Peddapalli","Peddapuram","Penukonda","Piduguralla","Piler","Pithapuram","Podili","Polavaram","Prakasam","Proddatur","Pulivendla","Punganur","Putturu","Rajahmundri","Rajampeta","Ramachandrapuram","Ramannapet","Rampachodavaram","Rangareddy","Rapur","Rayachoti","Rayadurg","Razole","Repalle","Saluru","Sangareddy","Sathupalli","Sattenapalle","Satyavedu","Shadnagar","Siddavattam","Siddipet","Sileru","Sircilla","Sirpur Kagaznagar","Sodam","Sompeta","Srikakulam","Srikalahasthi","Srisailam","Srungavarapukota","Sudhimalla","Sullarpet","Tadepalligudem","Tadipatri","Tanduru","Tanuku","Tekkali","Tenali","Thungaturthy","Tirivuru","Tirupathi","Tuni","Udaygiri","Ulvapadu","Uravakonda","Utnor","VR Puram","Vaimpalli","Vayalpad","Venkatgiri","Venkatgirikota","Vijayawada","Vikrabad","Vinjamuru","Vinukonda","Visakhapatnam","Vizayanagaram","Vizianagaram","Vuyyuru","Wanaparthy","Warangal","Wardhannapet","Yelamanchili","Yelavaram","Yeleswaram","Yellandu","Yellanuru","Yellareddy","Yerragondapalem","Zahirabad"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < andhra.length; i++) {
					      options += '<option value="' + andhra[i] + '">' + andhra[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Arunachal Pradesh') {
					    var ap = ["Along","Anini","Anjaw","Bameng","Basar","Changlang","Chowkhem","Daporizo","Dibang Valley","Dirang","Hayuliang","Huri","Itanagar","Jairampur","Kalaktung","Kameng","Khonsa","Kolaring","Kurung Kumey","Lohit","Lower Dibang Valley","Lower Subansiri","Mariyang","Mechuka","Miao","Nefra","Pakkekesang","Pangin","Papum Pare","Passighat","Roing","Sagalee","Seppa","Siang","Tali","Taliha","Tawang","Tezu","Tirap","Tuting","Upper Siang","Upper Subansiri","Yiang Kiag"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < ap.length; i++) {
					      options += '<option value="' + ap[i] + '">' + ap[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Assam') {
					    var assam = ["Abhayapuri","Baithalangshu","Barama","Barpeta Road","Bihupuria","Bijni","Bilasipara","Bokajan","Bokakhat","Boko","Bongaigaon","Cachar","Cachar Hills","Darrang","Dhakuakhana","Dhemaji","Dhubri","Dibrugarh","Digboi","Diphu","Goalpara","Gohpur","Golaghat","Guwahati","Hailakandi","Hajo","Halflong","Hojai","Howraghat","Jorhat","Kamrup","Karbi Anglong","Karimganj","Kokarajhar","Kokrajhar","Lakhimpur","Maibong","Majuli","Mangaldoi","Mariani","Marigaon","Moranhat","Morigaon","Nagaon","Nalbari","Rangapara","Sadiya","Sibsagar","Silchar","Sivasagar","Sonitpur","Tarabarihat","Tezpur","Tinsukia","Udalgiri","Udalguri","UdarbondhBarpeta"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < assam.length; i++) {
					      options += '<option value="' + assam[i] + '">' + assam[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Bihar') {
					    var bihar = ["Adhaura","Amarpur","Araria","Areraj","Arrah","Arwal","Aurangabad","Bagaha","Banka","Banmankhi","Barachakia","Barauni","Barh","Barosi","Begusarai","Benipatti","Benipur","Bettiah","Bhabhua","Bhagalpur","Bhojpur","Bidupur","Biharsharif","Bikram","Bikramganj","Birpur","Buxar","Chakai","Champaran","Chapara","Dalsinghsarai","Danapur","Darbhanga","Daudnagar","Dhaka","Dhamdaha","Dumraon","Ekma","Forbesganj","Gaya","Gogri","Gopalganj","HKharagpur","Hajipur","Hathua","Hilsa","Imamganj","Jahanabad","Jainagar","Jamshedpur","Jamui","Jehanabad","Jhajha","Jhanjharpur","Kahalgaon","Kaimur (Bhabua)","Katihar","Katoria","Khagaria","Kishanganj","Korha","Lakhisarai","Madhepura","Madhubani","Maharajganj","Mahua","Mairwa","Mallehpur","Masrakh","Mohania","Monghyr","Motihari","Motipur","Munger","Muzaffarpur","Nabinagar","Nalanda","Narkatiaganj","Naugachia","Nawada","Pakribarwan","Pakridayal","Patna","Phulparas","Piro","Pupri","Purena","Purnia","Rafiganj","Rajauli","Ramnagar","Raniganj","Raxaul","Rohtas","Rosera","SBakhtiarpur","Saharsa","Samastipur","Saran","Sasaram","Seikhpura","Sheikhpura","Sheohar","Sherghati","Sidhawalia","Singhwara","Sitamarhi","Siwan","Sonepur","Supaul","Thakurganj","Triveniganj","Udakishanganj","Vaishali","Wazirganj"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < bihar.length; i++) {
					      options += '<option value="' + bihar[i] + '">' + bihar[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Chandigarh') {
						    var Chandigarh = ["Chandigarh"," Mani Marja"];
						   $(function() {
						  var options = '';
						  for (var i = 0; i < Chandigarh.length; i++) {
						      options += '<option value="' + Chandigarh[i] + '">' + Chandigarh[i] + '</option>';
						  }
						  $('#pcity').append(options);
						  $("#pcity option:contains(" + pcity +")").attr("selected", true);
						  });
						  }
					  
					  
					  if ($val=='Chhattisgarh') {
					    var Chhattisgarh = ["Ambikapur","Antagarh","Arang","Bacheli","Bagbahera","Bagicha","Baikunthpur","Balod","Balodabazar","Balrampur","Barpalli","Basana","Bastanar","Bastar","Bderajpur","Bemetara","Berla","Bhairongarh","Bhanupratappur","Bharathpur","Bhatapara","Bhilai","Bhilaigarh","Bhopalpatnam","Bijapur","Bilaspur","Bodla","Bokaband","Chandipara","Chhinagarh","Chhuriakala","Chingmut","Chuikhadan","Dabhara","Dallirajhara","Dantewada","Deobhog","Dhamda","Dhamtari","Dharamjaigarh","Dongargarh","Durg","Durgakondal","Fingeshwar","Gariaband","Garpa","Gharghoda","Gogunda","Ilamidi","Jagdalpur","Janjgir","Janjgir-Champa","Jarwa","Jashpur","Jashpurnagar","Kabirdham-Kawardha","Kanker","Kasdol","Kathdol","Kathghora","Kawardha","Keskal","Khairgarh","Kondagaon","Konta","Korba","Korea","Kota","Koyelibeda","Kuakunda","Kunkuri","Kurud","Lohadigundah","Lormi","Luckwada","Mahasamund","Makodi","Manendragarh","Manpur","Marwahi","Mohla","Mungeli","Nagri","Narainpur","Narayanpur","Neora","Netanar","Odgi","Padamkot","Pakhanjur","Pali","Pandaria","Pandishankar","Parasgaon","Pasan","Patan","Pathalgaon","Pendra","Pratappur","Premnagar","Raigarh","Raipur","Rajnandgaon","Rajpur","Ramchandrapur","Saraipali","Saranggarh","Sarona","Semaria","Shakti","Sitapur","Sukma","Surajpur","Surguja","Tapkara","Toynar","Udaipur","Uproda","Wadrainagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < Chhattisgarh.length; i++) {
					      options += '<option value="' + Chhattisgarh[i] + '">' + Chhattisgarh[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Dadra & Nagar Haveli') {
					    var dadra = ["Amal","Amli","Bedpa","Chikhli","Dadra & Nagar Haveli","Dahikhed","Dolara","Galonda","Kanadi","Karchond","Khadoli","Kharadpada","Kherabari","Kherdi","Kothar","Luari","Mashat","Rakholi","Rudana","Saili","Sili","Silvassa","Sindavni","Udva","Umbarkoi","Vansda","Vasona","Velugam"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < dadra.length; i++) {
					      options += '<option value="' + dadra[i] + '">' + dadra[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Daman and Diu') {
					    var daman = ["Brancavare","Dagasi","Daman","Diu","Magarvara","Nagwa","Pariali","Passo Covo"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < daman.length; i++) {
					      options += '<option value="' + daman[i] + '">' + daman[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Delhi') {
					    var delhi = ["Delhi","New Delhi","North Delhi","Noida","Patparganj","Sonabarsa","Tughlakabad"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < delhi.length; i++) {
					      options += '<option value="' + delhi[i] + '">' + delhi[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Goa') {
					    var goa = ["Canacona","Candolim","Chinchinim","Cortalim","Goa","Jua","Madgaon","Mahem","Mapuca","Marmagao","Panji","Ponda","Sanvordem","Terekhol"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < goa.length; i++) {
					      options += '<option value="' + goa[i] + '">' + goa[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Gujarat') {
					    var gujarat = ["Ahmedabad","Ahwa","Amod","Amreli","Anand","Anjar","Ankaleshwar","Babra","Balasinor","Banaskantha","Bansada","Bardoli","Bareja","Baroda","Barwala","Bayad","Bhachav","Bhanvad","Bharuch","Bhavnagar","Bhiloda","Bhuj","Billimora","Borsad","Botad","Chanasma","Chhota Udaipur","Chotila","Dabhoi","Dahod","Damnagar","Dang","Danta","Dasada","Dediapada","Deesa","Dehgam","Deodar","Devgadhbaria","Dhandhuka","Dhanera","Dharampur","Dhari","Dholka","Dhoraji","Dhrangadhra","Dhrol","Dwarka","Fortsongadh","Gadhada","Gandhi Nagar","Gariadhar","Godhra","Gogodar","Gondal","Halol","Halvad","Harij","Himatnagar","Idar","Jambusar","Jamjodhpur","Jamkalyanpur","Jamnagar","Jasdan","Jetpur","Jhagadia","Jhalod","Jodia","Junagadh","Junagarh","Kalawad","Kalol","Kapad Wanj","Keshod","Khambat","Khambhalia","Khavda","Kheda","Khedbrahma","Kheralu","Kodinar","Kotdasanghani","Kunkawav","Kutch","Kutchmandvi","Kutiyana","Lakhpat","Lakhtar","Lalpur","Limbdi","Limkheda","Lunavada","MMMangrol","Mahuva","Malia-Hatina","Maliya","Malpur","Manavadar","Mandvi","Mangrol","Mehmedabad","Mehsana","Miyagam","Modasa","Morvi","Muli","Mundra","Nadiad","Nakhatrana","Nalia","Narmada","Naswadi","Navasari","Nizar","Okha","Paddhari","Padra","Palanpur","Palitana","Panchmahals","Patan","Pavijetpur","Porbandar","Prantij","Radhanpur","Rahpar","Rajaula","Rajkot","Rajpipla","Ranavav","Sabarkantha","Sanand","Sankheda","Santalpur","Santrampur","Savarkundla","Savli","Sayan","Sayla","Shehra","Sidhpur","Sihor","Sojitra","Sumrasar","Surat","Surendranagar","Talaja","Thara","Tharad","Thasra","Una-Diu","Upleta","Vadgam","Vadodara","Valia","Vallabhipur","Valod","Valsad","Vanthali","Vapi","Vav","Veraval","Vijapur","Viramgam","Visavadar","Visnagar","Vyara","Waghodia","Wankaner"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < gujarat.length; i++) {
					      options += '<option value="' + gujarat[i] + '">' + gujarat[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Haryana') {
					    var haryana = ["Adampur Mandi","Ambala","Assandh","Bahadurgarh","Barara","Barwala","Bawal","Bawanikhera","Bhiwani","Charkhidadri","Cheeka","Chhachrauli","Dabwali","Ellenabad","Faridabad","Fatehabad","Ferojpur Jhirka","Gharaunda","Gohana","Gurgaon","Hansi","Hisar","Jagadhari","Jatusana","Jhajjar","Jind","Julana","Kaithal","Kalanaur","Kalanwali","Kalka","Karnal","Kosli","Kurukshetra","Loharu","Mahendragarh","Meham","Mewat","Mohindergarh","Naraingarh","Narnaul","Narwana","Nilokheri","Nuh","Palwal","Panchkula","Panipat","Pehowa","Ratia","Rewari","Rohtak","Safidon","Sirsa","Siwani","Sonipat","Tohana","Tohsam","Yamunanagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < haryana.length; i++) {
					      options += '<option value="' + haryana[i] + '">' + haryana[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Himachal Pradesh') {
					    var himachal = ["Amb","Arki","Banjar","Bharmour","Bilaspur","Chamba","Churah","Dalhousie","Dehra Gopipur","Hamirpur","Jogindernagar","Kalpa","Kangra","Kinnaur","Kullu","Lahaul","Mandi","Nahan","Nalagarh","Nirmand","Nurpur","Palampur","Pangi","Paonta","Pooh","Rajgarh","Rampur Bushahar","Rohru","Shimla","Sirmaur","Solan","Spiti","Sundernagar","Theog","Udaipur","Una"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < himachal.length; i++) {
					      options += '<option value="' + himachal[i] + '">' + himachal[i] + '</option>';
					  }
					 $('#pcity').append(options);
					 $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Jammu and Kashmir') {
					    var jammu = ["Akhnoor","Anantnag","Badgam","Bandipur","Baramulla","Basholi","Bedarwah","Budgam","Doda","Gulmarg","Jammu","Kalakot","Kargil","Karnah","Kathua","Kishtwar","Kulgam","Kupwara","Leh","Mahore","Nagrota","Nobra","Nowshera","Nyoma","Padam","Pahalgam","Patnitop","Poonch","Pulwama","Rajouri","Ramban","Ramnagar","Reasi","Samba","Srinagar","Udhampur","Vaishno Devi"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < jammu.length; i++) {
					      options += '<option value="' + jammu[i] + '">' + jammu[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Jharkhand') {
					    var jharkhand = ["Bagodar","Baharagora","Balumath","Barhi","Barkagaon","Barwadih","Basia","Bermo","Bhandaria","Bhawanathpur","Bishrampur","Bokaro","Bolwa","Bundu","Chaibasa","Chainpur","Chakardharpur","Chandil","Chatra","Chavparan","Daltonganj","Deoghar","Dhanbad","Dumka","Dumri","Garhwa","Garu","Ghaghra","Ghatsila","Giridih","Godda","Gomia","Govindpur","Gumla","Hazaribagh","Hunterganj","Ichak","Itki","Jagarnathpur","Jamshedpur","Jamtara","Japla","Jharmundi","Jhinkpani","Jhumaritalaiya","Kathikund","Kharsawa","Khunti","Koderma","Kolebira","Latehar","Lohardaga","Madhupur","Mahagama","Maheshpur Raj","Mandar","Mandu","Manoharpur","Muri","Nagarutatri","Nala","Noamundi","Pakur","Palamu","Palkot","Patan","Rajdhanwar","Rajmahal","Ramgarh","Ranchi","Sahibganj","Saraikela","Simaria","Simdega","Singhbhum","Tisri","Torpa"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < jharkhand.length; i++) {
					      options += '<option value="' + jharkhand[i] + '">' + jharkhand[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Karnataka') {
					    var karnataka = ["Afzalpur","Ainapur","Aland","Alur","Anekal","Ankola","Arsikere","Athani","Aurad","Bableshwar","Badami","Bagalkot","Bagepalli","Bailhongal","Bangalore","Bangalore Rural","Bangarpet","Bantwal","Basavakalyan","Basavanabagewadi","Basavapatna","Belgaum","Bellary","Belthangady","Belur","Bhadravati","Bhalki","Bhatkal","Bidar","Bijapur","Biligi","Chadchan","Challakere","Chamrajnagar","Channagiri","Channapatna","Channarayapatna","Chickmagalur","Chikballapur","Chikkaballapur","Chikkanayakanahalli","Chikkodi","Chikmagalur","Chincholi","Chintamani","Chitradurga","Chittapur","Cowdahalli","Davanagere","Deodurga","Devangere","Devarahippargi","Dharwad","Doddaballapur","Gadag","Gangavathi","Gokak","Gowribdanpur","Gubbi","Gulbarga","Gundlupet","HBHalli","HD Kote","Haliyal","Hampi","Hangal","Harapanahalli","Hassan","Haveri","Hebri","Hirekerur","Hiriyur","Holalkere","Holenarsipur","Honnali","Honnavar","Hosadurga","Hosakote","Hosanagara","Hospet","Hubli","Hukkeri","Humnabad","Hungund","Hunsagi","Hunsur","Huvinahadagali","Indi","Jagalur","Jamkhandi","Jewargi","Joida","KR Nagar","Kadur","Kalghatagi","Kamalapur","Kanakapura","Kannada","Kargal","Karkala","Karwar","Khanapur","Kodagu","Kolar","Kollegal","Koppa","Koppal","Koratageri","Krishnarajapet","Kudligi","Kumta","Kundapur","Kundgol","Kunigal","Kurugodu","Kustagi","Lingsugur","Madikeri","Madugiri","Malavalli","Malur","Mandya","Mangalore","Manipal","Manvi","Mashal","Molkalmuru","Mudalgi","Muddebihal","Mudhol","Mudigere","Mulbagal","Mundagod","Mundargi","Murugod","Mysore","Nagamangala","Nanjangud","Nargund","Narsimrajapur","Navalgund","Nelamangala","Nimburga","Pandavapura","Pavagada","Puttur","Raibag","Raichur","Ramdurg","Ranebennur","Ron","Sagar","Sakleshpur","Salkani","Sandur","Saundatti","Savanur","Sedam","Shahapur","Shankarnarayana","Shikaripura","Shimoga","Shirahatti","Shorapur","Siddapur","Sidlaghatta","Sindagi","Sindhanur","Sira","Sirsi","Siruguppa","Somwarpet","Sorab","Sringeri","Sriniwaspur","Srirangapatna","Sullia","T Narsipur","Tallak","Tarikere","Telgi","Thirthahalli","Tiptur","Tumkur","Turuvekere","Udupi","Virajpet","Wadi","Yadgiri","Yelburga","Yellapur"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < karnataka.length; i++) {
					      options += '<option value="' + karnataka[i] + '">' + karnataka[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Kerala') {
					    var kerala = ["Adimaly","Adoor","Agathy","Alappuzha","Alathur","Alleppey","Alwaye","Amini","Androth","Attingal","Badagara","Bitra","Calicut","Cannanore","Chetlet","Ernakulam","Idukki","Irinjalakuda","Kadamath","Kalpeni","Kalpetta","Kanhangad","Kanjirapally","Kannur","Karungapally","Kasargode","Kavarathy","Kiltan","Kochi","Koduvayur","Kollam","Kottayam","Kovalam","Kozhikode","Kunnamkulam","Malappuram","Mananthodi","Manjeri","Mannarghat","Mavelikkara","Minicoy","Munnar","Muvattupuzha","Nedumandad","Nedumgandam","Nilambur","Palai","Palakkad","Palghat","Pathaanamthitta","Pathanamthitta","Payyanur","Peermedu","Perinthalmanna","Perumbavoor","Punalur","Quilon","Ranni","Shertallai","Shoranur","Taliparamba","Tellicherry","Thiruvananthapuram","Thodupuzha","Thrissur","Tirur","Tiruvalla","Trichur","Trivandrum","Uppala","Vadakkanchery","Vikom","Wayanad"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < kerala.length; i++) {
					      options += '<option value="' + kerala[i] + '">' + kerala[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Lakshadweep') {
						    var Lakshadweep = ["Agatti Island","Bingaram Island","Bitra Island","Chetlat Island","Kadmat Island","Kalpeni Island","Kavaratti Island","Kiltan Island","Lakshadweep Sea","Minicoy Island","North Island","South Island"];
						   $(function() {
						  var options = '';
						  for (var i = 0; i < Lakshadweep.length; i++) {
						      options += '<option value="' + Lakshadweep[i] + '">' + Lakshadweep[i] + '</option>';
						  }
						  $('#pcity').append(options);
						  $("#pcity option:contains(" + pcity +")").attr("selected", true);
						  });
						  }
					  
					  if ($val=='Madhya Pradesh') {
					    var mp = ["Agar","Ajaigarh","Alirajpur","Amarpatan","Amarwada","Ambah","Anuppur","Arone","Ashoknagar","Ashta","Atner","Babaichichli","Badamalhera","Badarwsas","Badnagar","Badnawar","Badwani","Bagli","Baihar","Balaghat","Baldeogarh","Baldi","Bamori","Banda","Bandhavgarh","Bareli","Baroda","Barwaha","Barwani","Batkakhapa","Begamganj","Beohari","Berasia","Berchha","Betul","Bhainsdehi","Bhander","Bhanpura","Bhikangaon","Bhimpur","Bhind","Bhitarwar","Bhopal","Biaora","Bijadandi","Bijawar","Bijaypur","Bina","Birsa","Birsinghpur","Budhni","Burhanpur","Buxwaha","Chachaura","Chanderi","Chaurai","Chhapara","Chhatarpur","Chhindwara","Chicholi","Chitrangi","Churhat","Dabra","Damoh","Datia","Deori","Deosar","Depalpur","Dewas","Dhar","Dharampuri","Dindori","Gadarwara","Gairatganj","Ganjbasoda","Garoth","Ghansour","Ghatia","Ghatigaon","Ghorandogri","Ghughari","Gogaon","Gohad","Goharganj","Gopalganj","Gotegaon","Gourihar","Guna","Gunnore","Gwalior","Gyraspur","Hanumana","Harda","Harrai","Harsud","Hatta","Hoshangabad","Ichhawar","Indore","Isagarh","Itarsi","Jabalpur","Jabera","Jagdalpur","Jaisinghnagar","Jaithari","Jaitpur","Jaitwara","Jamai","Jaora","Jatara","Jawad","Jhabua","Jobat","Jora","Kakaiya","Kannod","Kannodi","Karanjia","Kareli","Karera","Karhal","Karpa","Kasrawad","Katangi","Katni","Keolari","Khachrod","Khajuraho","Khakner","Khalwa","Khandwa","Khaniadhana","Khargone","Khategaon","Khetia","Khilchipur","Khirkiya","Khurai","Kolaras","Kotma","Kukshi","Kundam","Kurwai","Kusmi","Laher","Lakhnadon","Lamta","Lanji","Lateri","Laundi","Maheshwar","Mahidpurcity","Maihar","Majhagwan","Majholi","Malhargarh","Manasa","Manawar","Mandla","Mandsaur","Manpur","Mauganj","Mawai","Mehgaon","Mhow","Morena","Multai","Mungaoli","Nagod","Nainpur","Narsingarh","Narsinghpur","Narwar","Nasrullaganj","Nateran","Neemuch","Niwari","Niwas","Nowgaon","Pachmarhi","Pandhana","Pandhurna","Panna","Parasia","Patan","Patera","Patharia","Pawai","Petlawad","Pichhore","Piparia","Pohari","Prabhapattan","Punasa","Pushprajgarh","Raghogarh","Raghunathpur","Rahatgarh","Raisen","Rajgarh","Rajpur","Ratlam","Rehli","Rewa","Sabalgarh","Sagar","Sailana","Sanwer","Sarangpur","Sardarpur","Satna","Saunsar","Sehore","Sendhwa","Seondha","Seoni","Seonimalwa","Shahdol","Shahnagar","Shahpur","Shajapur","Sheopur","Sheopurkalan","Shivpuri","Shujalpur","Sidhi","Sihora","Silwani","Singrauli","Sirmour","Sironj","Sitamau","Sohagpur","Sondhwa","Sonkatch","Susner","Tamia","Tarana","Tendukheda","Teonthar","Thandla","Tikamgarh","Timarani","Udaipura","Ujjain","Umaria","Umariapan","Vidisha","Vijayraghogarh","Waraseoni","Zhirnia"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < mp.length; i++) {
					      options += '<option value="' + mp[i] + '">' + mp[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Maharashtra') {
					    var maharashtra = ["Achalpur","Aheri","Ahmednagar","Ahmedpur","Ajara","Akkalkot","Akola","Akole","Akot","Alibagh","Amagaon","Amalner","Ambad","Ambejogai","Amravati","Arjuni Merogaon","Arvi","Ashti","Atpadi","Aurangabad","Ausa","Babhulgaon","Balapur","Baramati","Barshi Takli","Barsi","Basmatnagar","Bassein","Beed","Bhadrawati","Bhamregadh","Bhandara","Bhir","Bhiwandi","Bhiwapur","Bhokar","Bhokardan","Bhoom","Bhor","Bhudargad","Bhusawal","Billoli","Brahmapuri","Buldhana","Butibori","Chalisgaon","Chamorshi","Chandgad","Chandrapur","Chandur","Chanwad","Chhikaldara","Chikhali","Chinchwad","Chiplun","Chopda","Chumur","Dahanu","Dapoli","Darwaha","Daryapur","Daund","Degloor","Delhi Tanda","Deogad","Deolgaonraja","Deori","Desaiganj","Dhadgaon","Dhanora","Dharani","Dhiwadi","Dhule","Dhulia","Digras","Dindori","Edalabad","Erandul","Etapalli","Gadhchiroli","Gadhinglaj","Gaganbavada","Gangakhed","Gangapur","Gevrai","Ghatanji","Golegaon","Gondia","Gondpipri","Goregaon","Guhagar","Hadgaon","Hatkangale","Hinganghat","Hingoli","Hingua","Igatpuri","Indapur","Islampur","Jalgaon","Jalna","Jamkhed","Jamner","Jath","Jawahar","Jintdor","Junnar","Kagal","Kaij","Kalamb","Kalamnuri","Kallam","Kalmeshwar","Kalwan","Kalyan","Kamptee","Kandhar","Kankavali","Kannad","Karad","Karjat","Karmala","Katol","Kavathemankal","Kedgaon","Khadakwasala","Khamgaon","Khed","Khopoli","Khultabad","Kinwat","Kolhapur","Kopargaon","Koregaon","Kudal","Kuhi","Kurkheda","Kusumba","Lakhandur","Langa","Latur","Lonar","Lonavala","Madangad","Madha","Mahabaleshwar","Mahad","Mahagaon","Mahasala","Mahaswad","Malegaon","Malgaon","Malgund","Malkapur","Malsuras","Malwan","Mancher","Mangalwedha","Mangaon","Mangrulpur","Manjalegaon","Manmad","Maregaon","Mehda","Mekhar","Mohadi","Mohol","Mokhada","Morshi","Mouda","Mukhed","Mul","Mumbai","Murbad","Murtizapur","Murud","Nagbhir","Nagpur","Nahavara","Nanded","Nandgaon","Nandnva","Nandurbar","Narkhed","Nashik","Navapur","Ner","Newasa","Nilanga","Niphad","Omerga","Osmanabad","Pachora","Paithan","Palghar","Pali","Pandharkawada","Pandharpur","Panhala","Paranda","Parbhani","Parner","Parola","Parseoni","Partur","Patan","Pathardi","Pathari","Patoda","Pauni","Peint","Pen","Phaltan","Pimpalner","Pirangut","Poladpur","Pune","Pusad","Pusegaon","Radhanagar","Rahuri","Raigad","Rajapur","Rajgurunagar","Rajura","Ralegaon","Ramtek","Ratnagiri","Raver","Risod","Roha","Sakarwadi","Sakoli","Sakri","Salekasa","Samudrapur","Sangamner","Sanganeshwar","Sangli","Sangola","Sanguem","Saoner","Saswad","Satana","Satara","Sawantwadi","Seloo","Shahada","Shahapur","Shahuwadi","Shevgaon","Shirala","Shirol","Shirpur","Shirur","Shirwal","Sholapur","Shri Rampur","Shrigonda","Shrivardhan","Sillod","Sinderwahi","Sindhudurg","Sindkheda","Sindkhedaraja","Sinnar","Sironcha","Soyegaon","Surgena","Talasari","Talegaon SJi Pant","Taloda","Tasgaon","Thane","Tirora","Tiwasa","Trimbak","Tuljapur","Tumsar","Udgir","Umarkhed","Umrane","Umrer","Urlikanchan","Vaduj","Velhe","Vengurla","Vijapur","Vita","Wada","Wai","Walchandnagar","Wani","Wardha","Warlydwarud","Warora","Washim","Wathar","Yavatmal","Yawal","Yeola","Yeotmal"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < maharashtra.length; i++) {
					      options += '<option value="' + maharashtra[i] + '">' + maharashtra[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Manipur') {
					    var manipur = ["Bishnupur","Chakpikarong","Chandel","Chattrik","Churachandpur","Imphal","Jiribam","Kakching","Kalapahar","Mao","Mulam","Parbung","Sadarhills","Saibom","Sempang","Senapati","Sochumer","Taloulong","Tamenglong","Thinghat","Thoubal","Ukhrul"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < manipur.length; i++) {
					      options += '<option value="' + manipur[i] + '">' + manipur[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Meghalaya') {
					    var meghalaya = ["Amlaren","Baghmara","Cherrapunjee","Dadengiri","Garo Hills","Jaintia Hills","Jowai","Khasi Hills","Khliehriat","Mariang","Mawkyrwat","Nongpoh","Nongstoin","Resubelpara","Ri Bhoi","Shillong","Tura","Williamnagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < meghalaya.length; i++) {
					      options += '<option value="' + meghalaya[i] + '">' + meghalaya[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Mizoram') {
					    var mizoram = ["Aizawl","Champhai","Demagiri","Kolasib","Lawngtlai","Lunglei","Mamit","Saiha","Serchhip"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < mizoram.length; i++) {
					      options += '<option value="' + mizoram[i] + '">' + mizoram[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					   if ($val=='Nagaland') {
					    var nagaland = ["Dimapur","Jalukie","Kiphire","Kohima","Mokokchung","Mon","Phek","Tuensang","Wokha","Zunheboto"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < nagaland.length; i++) {
					      options += '<option value="' + nagaland[i] + '">' + nagaland[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Orissa') {
					    var orissa = ["Anandapur","Angul","Anugul","Aska","Athgarh","Athmallik","Attabira","Bagdihi","Balangir","Balasore","Baleswar","Baliguda","Balugaon","Banaigarh","Bangiriposi","Barbil","Bargarh","Baripada","Barkot","Basta","Berhampur","Betanati","Bhadrak","Bhanjanagar","Bhawanipatna","Bhubaneswar","Birmaharajpur","Bisam Cuttack","Boriguma","Boudh","Buguda","Chandbali","Chhatrapur","Chhendipada","Cuttack","Daringbadi","Daspalla","Deodgarh","Deogarh","Dhanmandal","Dharamgarh","Dhenkanal","Digapahandi","Dunguripali","G Udayagiri","Gajapati","Ganjam","Ghatgaon","Gudari","Gunupur","Hemgiri","Hindol","Jagatsinghapur","Jajpur","Jamankira","Jashipur","Jayapatna","Jeypur","Jharigan","Jharsuguda","Jujumura","Kalahandi","Kalimela","Kamakhyanagar","Kandhamal","Kantabhanji","Kantamal","Karanjia","Kashipur","Kendrapara","Kendujhar","Keonjhar","Khalikote","Khordha","Khurda","Komana","Koraput","Kotagarh","Kuchinda","Lahunipara","Laxmipur","M Rampur","Malkangiri","Mathili","Mayurbhanj","Mohana","Motu","Nabarangapur","Naktideul","Nandapur","Narlaroad","Narsinghpur","Nayagarh","Nimapara","Nowparatan","Nowrangapur","Nuapada","Padampur","Paikamal","Palla Hara","Papadhandi","Parajang","Pardip","Parlakhemundi","Patnagarh","Pattamundai","Phiringia","Phulbani","Puri","Puruna Katak","R Udayigiri","Rairakhol","Rairangpur","Rajgangpur","Rajkhariar","Rayagada","Rourkela","Sambalpur","Sohela","Sonapur","Soro","Subarnapur","Sunabeda","Sundergarh","Surada","T Rampur","Talcher","Telkoi","Titlagarh","Tumudibandha","Udala","Umerkote"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < orissa.length; i++) {
					      options += '<option value="' + orissa[i] + '">' + orissa[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Pondicherry') {
						    var Pondicherry = ["Bahur","Karaikal","Mahe","Pondicherry","Purnankuppam","Valudavur","Villianur","Yanam"];
						   $(function() {
						  var options = '';
						  for (var i = 0; i < Pondicherry.length; i++) {
						      options += '<option value="' + Pondicherry[i] + '">' + Pondicherry[i] + '</option>';
						  }
						  $('#pcity').append(options);
						  $("#pcity option:contains(" + pcity +")").attr("selected", true);
						  });
						  }
					  
					  
					  
					  if ($val=='Punjab') {
					    var punjab = ["Abohar","Ajnala","Amritsar","Balachaur","Barnala","Batala","Bathinda","Chandigarh","Dasua","Dinanagar","Faridkot","Fatehgarh Sahib","Fazilka","Ferozepur","Garhashanker","Goindwal","Gurdaspur","Guruharsahai","Hoshiarpur","Jagraon","Jalandhar","Jugial","Kapurthala","Kharar","Kotkapura","Ludhiana","Malaut","Malerkotla","Mansa","Moga","Muktasar","Nabha","Nakodar","Nangal","Nawanshahar","Nawanshahr","Pathankot","Patiala","Patti","Phagwara","Phillaur","Phulmandi","Quadian","Rajpura","Raman","Rayya","Ropar","Rupnagar","Samana","Samrala","Sangrur","Sardulgarh","Sarhind","SAS Nagar","Sultanpur Lodhi","Sunam","Tanda Urmar","Taran Taran","Zira"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < punjab.length; i++) {
					      options += '<option value="' + punjab[i] + '">' + napunjabgaland[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Rajasthan') {
					    var rajasthan = ["Abu Road","Ahore","Ajmer","Aklera","Alwar","Amber","Amet","Anupgarh","Asind","Aspur","Atru","Bagidora","Bali","Bamanwas","Banera","Bansur","Banswara","Baran","Bari","Barisadri","Barmer","Baseri","Bassi","Baswa","Bayana","Beawar","Begun","Behror","Bhadra","Bharatpur","Bhilwara","Bhim","Bhinmal","Bikaner","Bilara","Bundi","Chhabra","Chhipaborad","Chirawa","Chittorgarh","Chohtan","Churu","Dantaramgarh","Dausa","Deedwana","Deeg","Degana","Deogarh","Deoli","Desuri","Dhariawad","Dholpur","Digod","Dudu","Dungarpur","Dungla","Fatehpur","Gangapur","Gangdhar","Gerhi","Ghatol","Girwa","Gogunda","Hanumangarh","Hindaun","Hindoli","Hurda","Jahazpur","Jaipur","Jaisalmer","Jalore","Jhalawar","Jhunjhunu","Jodhpur","Kaman","Kapasan","Karauli","Kekri","Keshoraipatan","Khandar","Kherwara","Khetri","Kishanganj","Kishangarh","Kishangarhbas","Kolayat","Kota","Kotputli","Kotra","Kotri","Kumbalgarh","Kushalgarh","Ladnun","Ladpura","Lalsot","Laxmangarh","Lunkaransar","Mahuwa","Malpura","Malvi","Mandal","Mandalgarh","Mandawar","Mangrol","Marwar-Jn","Merta","Nadbai","Nagaur","Nainwa","Nasirabad","Nathdwara","Nawa","Neem Ka Thana","Newai","Nimbahera","Nohar","Nokha","Onli","Osian","Pachpadara","Pachpahar","Padampur","Pali","Parbatsar","Phagi","Phalodi","Pilani","Pindwara","Pipalda","Pirawa","Pokaran","Pratapgarh","Raipur","Raisinghnagar","Rajgarh","Rajsamand","Ramganj Mandi","Ramgarh","Rashmi","Ratangarh","Reodar","Rupbas","Sadulshahar","Sagwara","Sahabad","Salumber","Sanchore","Sangaria","Sangod","Sapotra","Sarada","Sardarshahar","Sarwar","Sawai Madhopur","Shahapura","Sheo","Sheoganj","Shergarh","Sikar","Sirohi","Siwana","Sojat","Sri Dungargarh","Sri Ganganagar","Sri Karanpur","Sri Madhopur","Sujangarh","Taranagar","Thanaghazi","Tibbi","Tijara","Todaraisingh","Tonk","Udaipur","Udaipurwati","Uniayara","Vallabhnagar","Viratnagar"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < rajasthan.length; i++) {
					      options += '<option value="' + rajasthan[i] + '">' + rajasthan[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  if ($val=='Sikkim') {
					    var sikkim = ["Barmiak","Be","Bhurtuk","Chhubakha","Chidam","Chubha","Chumikteng","Dentam","Dikchu","Dzongri","Gangtok","Gauzing","Gyalshing","Hema","Kerung","Lachen","Lachung","Lema","Lingtam","Lungthu","Mangan","Namchi","Namthang","Nanga","Nantang","Naya Bazar","Padamachen","Pakhyong","Pemayangtse","Phensang","Rangli","Rinchingpong","Sakyong","Samdong","Singtam","Siniolchu","Sombari","Soreng","Sosing","Tekhug","Temi","Tsetang","Tsomgo","Tumlong","Yangang","Yumtang"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < sikkim.length; i++) {
					      options += '<option value="' + sikkim[i] + '">' + sikkim[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Tamil Nadu') {
					    var tn = ["Ambasamudram","Anamali","Arakandanallur","Arantangi","Aravakurichi","Ariyalur","Arkonam","Arni","Aruppukottai","Attur","Avanashi","Batlagundu","Bhavani","Chengalpattu","Chengam","Chennai","Chidambaram","Chingleput","Coimbatore","Courtallam","Cuddalore","Cumbum","Denkanikoitah","Devakottai","Dharampuram","Dharmapuri","Dindigul","Erode","Gingee","Gobichettipalayam","Gudalur","Gudiyatham","Harur","Hosur","Jayamkondan","Kallkurichi","Kanchipuram","Kangayam","Kanyakumari","Karaikal","Karaikudi","Karur","Keeranur","Kodaikanal","Kodumudi","Kotagiri","Kovilpatti","Krishnagiri","Kulithalai","Kumbakonam","Kuzhithurai","Madurai","Madurantgam","Manamadurai","Manaparai","Mannargudi","Mayiladuthurai","Mayiladutjurai","Mettupalayam","Metturdam","Mudukulathur","Mulanur","Musiri","Nagapattinam","Nagarcoil","Namakkal","Nanguneri","Natham","Neyveli","Nilgiris","Oddanchatram","Omalpur","Ootacamund","Ooty","Orathanad","Palacode","Palani","Palladum","Papanasam","Paramakudi","Pattukottai","Perambalur","Perundurai","Pollachi","Polur","Pondicherry","Ponnamaravathi","Ponneri","Pudukkottai","Rajapalayam","Ramanathapuram","Rameshwaram","Ranipet","Rasipuram","Salem","Sankagiri","Sankaran","Sathiyamangalam","Sivaganga","Sivakasi","Sriperumpudur","Srivaikundam","Tenkasi","Thanjavur","Theni","Thirumanglam","Thiruraipoondi","Thoothukudi","Thuraiyure","Tindivanam","Tiruchendur","Tiruchengode","Tiruchirappalli","Tirunelvelli","Tirupathur","Tirupur","Tiruttani","Tiruvallur","Tiruvannamalai","Tiruvarur","Tiruvellore","Tiruvettipuram","Trichy","Tuticorin","Udumalpet","Ulundurpet","Usiliampatti","Uthangarai","Valapady","Valliyoor","Vaniyambadi","Vedasandur","Vellore","Velur","Vilathikulam","Villupuram","Virudhachalam","Virudhunagar","Wandiwash","Yercaud"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < tn.length; i++) {
					      options += '<option value="' + tn[i] + '">' + tn[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Telangana') {
					    var telangana = ["Adilabad","Hyderabad","Karimnagar","Mahbubnagar","Medak","Nalgonda","Nizamabad","Ranga Reddy","Warangal"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < telangana.length; i++) {
					      options += '<option value="' + telangana[i] + '">' + telangana[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Tripura') {
					    var tripura = ["Agartala","Ambasa","Bampurbari","Belonia","Dhalai","Dharam Nagar","Kailashahar","Kamal Krishnabari","Khopaiyapara","Khowai","Phuldungsei","Radha Kishore Pur","Tripura"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < tripura.length; i++) {
					      options += '<option value="' + tripura[i] + '">' + tripura[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Uttar Pradesh') {
					    var up = ["Achhnera","Agra","Akbarpur","Aliganj","Aligarh","Allahabad","Ambedkar Nagar","Amethi","Amiliya","Amroha","Anola","Atrauli","Auraiya","Azamgarh","Baberu","Badaun","Baghpat","Bagpat","Baheri","Bahraich","Ballia","Balrampur","Banda","Bansdeeh","Bansgaon","Bansi","Barabanki","Bareilly","Basti","Bhadohi","Bharthana","Bharwari","Bhogaon","Bhognipur","Bidhuna","Bijnore","Bikapur","Bilari","Bilgram","Bilhaur","Bindki","Bisalpur","Bisauli","Biswan","Budaun","Budhana","Bulandshahar","Bulandshahr","Capianganj","Chakia","Chandauli","Charkhari","Chhata","Chhibramau","Chirgaon","Chitrakoot","Chunur","Dadri","Dalmau","Dataganj","Debai","Deoband","Deoria","Derapur","Dhampur","Domariyaganj","Dudhi","Etah","Etawah","Faizabad","Farrukhabad","Fatehpur","Firozabad","Garauth","Garhmukteshwar","Gautam Buddha Nagar","Ghatampur","Ghaziabad","Ghazipur","Ghosi","Gonda","Gorakhpur","Gunnaur","Haidergarh","Hamirpur","Hapur","Hardoi","Harraiya","Hasanganj","Hasanpur","Hathras","Jalalabad","Jalaun","Jalesar","Jansath","Jarar","Jasrana","Jaunpur","Jhansi","Jyotiba Phule Nagar","Kadipur","Kaimganj","Kairana","Kaisarganj","Kalpi","Kannauj","Kanpur","Karchhana","Karhal","Karvi","Kasganj","Kaushambi","Kerakat","Khaga","Khair","Khalilabad","Kheri","Konch","Kumaon","Kunda","Kushinagar","Lalganj","Lalitpur","Lucknow","Machlishahar","Maharajganj","Mahoba","Mainpuri","Malihabad","Mariyahu","Math","Mathura","Mau","Maudaha","Maunathbhanjan","Mauranipur","Mawana","Meerut","Mehraun","Meja","Mirzapur","Misrikh","Modinagar","Mohamdabad","Mohamdi","Moradabad","Musafirkhana","Muzaffarnagar","Nagina","Najibabad","Nakur","Nanpara","Naraini","Naugarh","Nawabganj","Nighasan","Noida","Orai","Padrauna","Pahasu","Patti","Pharenda","Phoolpur","Phulpur","Pilibhit","Pitamberpur","Powayan","Pratapgarh","Puranpur","Purwa","Raibareli","Rampur","Ramsanehi Ghat","Rasara","Rath","Robertsganj","Sadabad","Safipur","Sagri","Saharanpur","Sahaswan","Sahjahanpur","Saidpur","Salempur","Salon","Sambhal","Sandila","Sant Kabir Nagar","Sant Ravidas Nagar","Sardhana","Shahabad","Shahganj","Shahjahanpur","Shikohabad","Shravasti","Siddharthnagar","Sidhauli","Sikandra Rao","Sikandrabad","Sitapur","Siyana","Sonbhadra","Soraon","Sultanpur","Tanda","Tarabganj","Tilhar","Unnao","Utraula","Varanasi","Zamania"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < up.length; i++) {
					      options += '<option value="' + up[i] + '">' + up[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='Uttaranchal') {
					    var uttarakhand = ["Almora","Bageshwar","Bhatwari","Chakrata","Chamoli","Champawat","Dehradun","Deoprayag","Dharchula","Dunda","Haldwani","Haridwar","Joshimath","Karan Prayag","Kashipur","Khatima","Kichha","Lansdown","Munsiari","Mussoorie","Nainital","Pantnagar","Partapnagar","Pauri Garhwal","Pithoragarh","Purola","Rajgarh","Ranikhet","Roorkee","Rudraprayag","Tehri Garhwal","Udham Singh Nagar","Ukhimath","Uttarkashi"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < uttarakhand.length; i++) {
					      options += '<option value="' + uttarakhand[i] + '">' + uttarakhand[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
					  
					  
					  if ($val=='West Bengal') {
					    var wb = ["Adra","Alipurduar","Amlagora","Arambagh","Asansol","Balurghat","Bankura","Bardhaman","Basirhat","Berhampur","Bethuadahari","Birbhum","Birpara","Bishanpur","Bolpur","Bongoan","Bulbulchandi","Burdwan","Calcutta","Canning","Champadanga","Contai","Cooch Behar","Daimond Harbour","Dalkhola","Dantan","Darjeeling","Dhaniakhali","Dhuliyan","Dinajpur","Dinhata","Durgapur","Gangajalghati","Gangarampur","Ghatal","Guskara","Habra","Haldia","Harirampur","Harishchandrapur","Hooghly","Howrah","Islampur","Jagatballavpur","Jalpaiguri","Jhalda","Jhargram","Kakdwip","Kalchini","Kalimpong","Kalna","Kandi","Karimpur","Katwa","Kharagpur","Khatra","Krishnanagar","Mal Bazar","Malda","Manbazar","Mathabhanga","Medinipur","Mekhliganj","Mirzapur","Murshidabad","Nadia","Nagarakata","Nalhati","Nayagarh","Parganas","Purulia","Raiganj","Rampur Hat","Ranaghat","Seharabazar","Siliguri","Suri","Takipur","Tamluk"];
					   $(function() {
					  var options = '';
					  for (var i = 0; i < wb.length; i++) {
					      options += '<option value="' + wb[i] + '">' + wb[i] + '</option>';
					  }
					  $('#pcity').append(options);
					  $("#pcity option:contains(" + pcity +")").attr("selected", true);
					  });
					  }
			}
		}
		$("#pincode").val($.urlParam('pincode').replace(/%20/g, " "));
		$("#ppincode").val($.urlParam('ppincode').replace(/%20/g, " "));
		$("#academicyear option:contains(" + $.urlParam('academicyear').replace(/%20/g, " ") +")").attr("selected", true);
		$(function(){
			$.ajax({
			    type: "GET",
			    url: "../showdropdownbranch",                
			    dataType: "json",
			    success:function(data){
			    	
			    	if(data){
			    		var branch=$("#branch");
			    		
			    		$.each(data, function(k, v) {
			    			if($.urlParam('branchname').replace(/%20/g, " ")==v)
			    				$('<option selected>').val(k).text(v).appendTo(branch);
			    			else
			    				$('<option>').val(k).text(v).appendTo(branch);
			    		  });
			        }
			    },
			    error:function(){
			        
			    } 

			})
			$.ajax({
			    type: "GET",
			    url: "../showdropdowncourse",                
			    dataType: "json",
			    success:function(data){
			    	
			    	if(data){
			    		var course=$("#course");
			    		
			    		$.each(data, function(k, v) {
			    			if($.urlParam('coursename').replace(/%20/g, " ")==v)
			    				$('<option selected>').val(k).text(v).appendTo(course);
			    			else
			    				$('<option>').val(k).text(v).appendTo(course);
			    		  });
			        }
			    },
			    error:function(){
			        
			    } 

			})
			$.ajax({
			    type: "GET",
			    url: "../showdropdownclass",                
			    dataType: "json",
			    success:function(data){
			    	
			    	if(data){
			    		var class1=$("#class");
			    		
			    		$.each(data, function(k, v) {
			    			if($.urlParam('classname').replace(/%20/g, " ")==v)
			    				$('<option selected>').val(k).text(v).appendTo(class1);
			    			else
			    				$('<option>').val(k).text(v).appendTo(class1); 
			    		  });
			        }
			    },
			    error:function(){
			        
			    } 

			})
			$.ajax({
			    type: "GET",
			    url: "../showdropdownsection",                
			    dataType: "json",
			    success:function(data){
			    	
			    	if(data){
			    		var section=$("#section");
			    		
			    		$.each(data, function(k, v) {
			    			if($.urlParam('sectionname').replace(/%20/g, " ")==v)
			    				$('<option selected>').val(k).text(v).appendTo(section);
			    			else
			    				$('<option>').val(k).text(v).appendTo(section);
			    		  });
			        }
			    },
			    error:function(){
			        
			    } 

			})
			
			
		});
		
		$("#semester option:contains(" + $.urlParam('semester').replace(/%20/g, " ") +")").attr("selected", true);
		$("#rollno").val($.urlParam('rollno').replace(/%20/g, " "));
		$("#datepicker-2").val($.urlParam('dateofadmission').replace(/%20/g, " "));
		
		$("#fathername").val($.urlParam('fathername').replace(/%20/g, " "));
		$("#mothername").val($.urlParam('mothername').replace(/%20/g, " "));
		$("#mocc").val($.urlParam('moccupation').replace(/%20/g, " "));
		$("#focc").val($.urlParam('foccupation').replace(/%20/g, " "));
		$("#gphone").val($.urlParam('gphone').replace(/%20/g, " "));
		$("#gaddress").val($.urlParam('gaddress').replace(/%20/g, " "));
	});
	
	
	
	
	
	
	
	$("#prnno").focusin(function(){
		$("#prnexist").css('display','none');
		
	});
	
	$("#prnno").focusout(function(){
		$("#load").css("display", "none");
		
	});
	
	$("#prnno").on('input propertychange', function() {
		$("#prnexist").empty();
		var prn=$("#prnno").val();
		if(prn.length!=0)
		{
			$("#load").css("display", "block");
			
			//ajax call to check existing PRN
			
					$.ajax({
		                type: "GET",
		                url: "checkprn",                
		                dataType: "json",
		                data: {"prnno" : prn,"action":"update"},
		                success:function(data){
		                	if(data.result==0||data.result==1){
		                		$("#prnexist").empty();
		                    }
		                	else
		                	{
		                		$("#prnexist").append("&nbsp;&nbspPRN No. "+prn+" is already registered");
			                    $("#prnexist").css('display','block');
			                    $("#prnno").val("");
			                    $("#load").css("display", "none");
		                		
		                		
		                	}
		                },
		                error:function(){
		                    alert('not worked.');
		                } 

		            })
		}
			
	});	
	
	$("#chkphoto").change(function(){
		var chk=$("#chkphoto");
		if($("#chkphoto").is(':checked'))
		{
			$("$photo").attr('disabled',false);
		}
		else
		{
			$("$photo").attr('disabled',true);
		}		
	});	
			



});
	
	
	

	
	