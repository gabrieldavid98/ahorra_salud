module MedicamentAuthorizationsHelper
  def status_text(status)
    case status
    when 1
      "En proceso de autorizacíon"
    when 2
      "Autorizado"
    when 3
      "No autorizado"
    else
      "Pendiente por autorizar"
    end
  end

  def status_class(status)
    case status
    when 1
      "uk-badge-secondary"
    when 2
      "uk-badge-primary"
    when 3
      "uk-badge-danger"
    else
      ""
    end
  end
end
