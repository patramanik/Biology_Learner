/// id : 1
/// category_id : 1
/// post_name : "Chloroplasts"
/// meta_title : "Algae found in the group."
/// image : "1695137352.jpg"
/// Post_keywords : "Definition, Structure, Functions"
/// post_content : "<h2>Phaeophyta (Brown Algae): An Overview</h2><p>The members of the Phaeophyta (class Phaeophyceae) are known as brown algae due to their characteristic brown colour. They exhibit a brown colour because of the presence of the golden brown pigment fucoxanthin.</p><p>The plant body of brown algae is multicellular and structurally complex.</p><p>&nbsp;</p><h2>Characteristics of Phaeophyta</h2><ul><li>Most of the brown algae are marine. They are extremely rare in freshwater habitats.</li><li>The plant body is always multicellular and highly differentiated, both externally and internally.</li><li>The structure of the thalli varies greatly, from a simple microscopic heterotrichous filament (e.g., <a href=\"https://biologylearner.com/ectocarpus-salient-features-occurrence-thallus-structure-reproduction/\">Ectocarpus</a>) to complex foliage plants (e.g., Macrocystis pyrifera).</li><li>The plant body is generally differentiated into a holdfast, stipe, and blade.</li><li>The cell wall is thick and bi-layered. The outer gelatinous layer is composed of alginic and fucinic acids, while the inner layer consists mainly of cellulose.</li><li>Many small vesicles and some whitish granules called fucosan vesicles are usually present in the cells.</li><li>Photosynthetic pigments such as chlorophyll-a, chlorophyll-c, β-carotene, flavoxanthin, violaxanthin, and fucoxanthin are found in chromatophores. The chlorophyll is masked by fucoxanthin, which gives this group its characteristic brown colour.</li><li>Pyrenoid is generally absent, but if present, it is stalked or at least protrudes from the chloroplast.</li><li>Growth may be apical (Fucus), intercalary (Laminaria), or trichothallic (Ectocarpus).</li><li>Mannitol and laminarin are the common reserve food materials.</li><li>Motile cells, i.e., reproductive structures (zoospores or gametes), have two laterally inserted unequal flagella, of which the larger one is the tinsel type.</li><li>Asexual reproduction occurs through zoospores. The zoospores may be haploid (produced in unilocular sporangia) or diploid (formed within the plurilocular sporangia). However, in Fucales and Dictyotales, asexual reproduction is not seen.</li><li>Sexual reproduction takes place by isogamy (Ectocarpales), anisogamy (Tilopteridales), and oogamy (Fucales and Laminariales).</li><li>The zygote does not undergo meiotic division, and on germination, it gives rise to a diploid sporophytic plant body.</li><li>The alternation of generations is very distinct in Phaeophyta. Most of the members show isomorphic (Ectocarpus) or heteromorphic (Laminaria) alternations of generation.</li></ul><figure class=\"image\"><img src=\"http://127.0.0.1:8000/uploads/post/upload/1695137255.jpg\"></figure><h2>Distribution of Phaeophyta</h2><p>The division Phaeophyta contains about 265 genera and 1500–2000 species.</p><p>Most brown algae are marine (99.7%). Some members, such as Sphacelaria, Pleurocladia, Heribaudiella, and Bodanella, are found in freshwater. Pleurocladia locustris occur in both freshwater and marine habitats.</p><p>In North Atlantic and North Pacific, large brown algae sometimes grow in great abundance, both in the intertidal zone.</p><p>The majority of the marine brown algae grow attached to rocks or other solid substrates, while a few species occur in association with other algae, either as epiphytes or endophytes.</p><p>&nbsp;</p>"

class PostModel {
  PostModel({
      num? id, 
      num? categoryId, 
      String? postName, 
      String? metaTitle, 
      String? image, 
      String? postKeywords, 
      String? postContent,}){
    _id = id;
    _categoryId = categoryId;
    _postName = postName;
    _metaTitle = metaTitle;
    _image = image;
    _postKeywords = postKeywords;
    _postContent = postContent;
}

  PostModel.fromJson(dynamic json) {
    _id = json['id'];
    _categoryId = json['category_id'];
    _postName = json['post_name'];
    _metaTitle = json['meta_title'];
    _image = json['image'];
    _postKeywords = json['Post_keywords'];
    _postContent = json['post_content'];
  }
  num? _id;
  num? _categoryId;
  String? _postName;
  String? _metaTitle;
  String? _image;
  String? _postKeywords;
  String? _postContent;
PostModel copyWith({  num? id,
  num? categoryId,
  String? postName,
  String? metaTitle,
  String? image,
  String? postKeywords,
  String? postContent,
}) => PostModel(  id: id ?? _id,
  categoryId: categoryId ?? _categoryId,
  postName: postName ?? _postName,
  metaTitle: metaTitle ?? _metaTitle,
  image: image ?? _image,
  postKeywords: postKeywords ?? _postKeywords,
  postContent: postContent ?? _postContent,
);
  num? get id => _id;
  num? get categoryId => _categoryId;
  String? get postName => _postName;
  String? get metaTitle => _metaTitle;
  String? get image => _image;
  String? get postKeywords => _postKeywords;
  String? get postContent => _postContent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['category_id'] = _categoryId;
    map['post_name'] = _postName;
    map['meta_title'] = _metaTitle;
    map['image'] = _image;
    map['Post_keywords'] = _postKeywords;
    map['post_content'] = _postContent;
    return map;
  }

}