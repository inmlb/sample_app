module ApplicationHelper

  # Retourne un titre propre à la page.               # Commentaire de documentation
  def titre                                           # Définition de la méthode
    base_titre = "Simple App du Tutoriel Ruby on Rails"  # Assignement de variable
    if @titre.nil?                                    # Test booléen pour la nullité
      base_titre                                      # Retour implicite
    else
      "#{base_titre} | #{@titre}"                     # Interpolation de chaine
    end
  end
end
