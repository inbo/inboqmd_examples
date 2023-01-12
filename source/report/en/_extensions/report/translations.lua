local function translation(lang)
  local result
  if (lang == "nl-BE") then
    result = {
      author = "Geschreven door",
      brussels = "Brussel",
      citation = "Wijze van citeren",
      country = "",
      depotnr = "Depotnummer",
      export = "Exporteer referentie als",
      location = "Vestiging",
      mission = "Het INBO is het onafhankelijk onderzoeksinstituut van de Vlaamse overheid dat via toegepast wetenschappelijk onderzoek, data- en kennisontsluiting het biodiversiteitsbeleid en -beheer onderbouwt en evalueert.",
      name = "Instituut voor Natuur- en Bosonderzoek",
      ordernr = "Opdrachtnummer",
      reviewer = "Nagelezen door",
      series = "Rapporten van het",
      vu = "Verantwoordelijke uitgever",
      year = "Gepubliceerd in"
    }
  elseif (lang == "fr-FR") then
    result = {
      author = "Écrit par",
      brussels = "Bruxelles",
      citation = "Citation recommandée",
      country = ", Belgique",
      depotnr = "Numéro de dépôt",
      export = "Exporter la référence à",
      location = "Adresse",
      mission = "l'Institut de Recherche sur la Nature et les Forêts ('Instituut voor Natuur- en Bosonderzoek', INBO) est un institut de recherche indépendant du gouvernement flamand, qui étaye et évalue la politique et la gestion en matière de biodiversité par la recherche scientifique appliquée, l'intégration et la dissémination publique de données et de connaissances.",
      name = "l'Institut de Recherche sur la Nature et les Forêts",
      ordernr = "Numéro de commande",
      reviewer = "Examiné par",
      series = "Rapports de",
      vu = "Éditeur responsable",
      year = "Publié en"
    }
  else
    result = {
      author = "Written by",
      brussels = "Brussels",
      citation = "Way of quoting",
      country = ", Belgium",
      depotnr = "Deposit number",
      export = "Export reference to",
      location = "Location:",
      mission = "The Research Institute for Nature and Forest (INBO) is an independent research institute of the Flemish government. Through applied scientific research, open data and knowledge, integration and disclosure, it underpins and evaluates biodiversity policy and management.",
      name = "Research Instute for Nature and Forest",
      ordernr = "Order number",
      reviewer = "Reviewed by",
      series = "Reports of the",
      vu = "Responsible publisher",
      year = "Published during"
    }
  end
  return result
end

return {
  {
    Meta = function(meta)
      meta.translation = translation(pandoc.utils.stringify(meta.lang))
      return meta
    end
  }
}
