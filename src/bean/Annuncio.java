package bean;

import java.util.ArrayList;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author Davide Benedetto Strianese
 * Questa classe rappresenta l'annuncio
 */
public class Annuncio {
	//i campi medico e paziente erano interi bean ma sarebbe un livello di ridondanza davvero estremo
	//considerando che di quei bean ti servono pochi dati, e per quei dati devi praticamente fare una tabella completa
	//dei bean di tutti i medici e pazienti coinvolti in tutti gli annunci quando li carichi una lista
	//temo che sarebbe molto lento, e infatti nel model ho visto che sono stati trattati come codici fiscali e ho adattato.
	//Logica specifica nel progetto che faccia conto della presenza di quei bean ancora non ce n'è
	//quindi ovviamente possiamo ancora decidere in un modo o nell'altro in base alle esigenze
	//comunque la logica del messaggio è fatta e finita coi cf e quella degli annunci sarebbe praticamente identica
	
	private String idAnnuncio;
	private String medico; //CF del medico che ha pubblicato l'annuncio
	private ArrayList<String> pazienti; //CF dei pazienti a cui è rivolto
	private String titolo;
	private String testo;
	private String allegato; //può essere una presentazione pp o un video, tenere traccia tramite path
	private ZonedDateTime data;
	private Boolean visualizzato;
	public Annuncio() {}
	
	public Annuncio(String medico, ArrayList<String> pazienti, String titolo, String testo, String allegato, ZonedDateTime data) {
		this.medico = medico;
		this.pazienti = pazienti;
		this.titolo = titolo;
		this.testo = testo;
		this.allegato = allegato;
		this.data = data;
		this.visualizzato=false;
	}

	public String getMedico() {
		return medico;
	}

	public void setMedico(String medico) {
		this.medico = medico;
	}

	public ArrayList<String> getPazienti() {
		return pazienti;
	}

	public void setPazienti(ArrayList<String> pazienti) {
		this.pazienti = pazienti;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getTesto() {
		return testo;
	}

	public void setTesto(String testo) {
		this.testo = testo;
	}

	public String getAllegato() {
		return allegato;
	}

	public void setAllegato(String allegato) {
		this.allegato = allegato;
	}

	public ZonedDateTime getData() {
		return data;
	}
	
	public String getDataFormattata() {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return data.format(format);
	}

	public void setData(ZonedDateTime data) {
		this.data = data;
	}
	
	public void setIdAnnuncio(String idAnnuncio) {
		this.idAnnuncio = idAnnuncio;
	}
	public String getIdMessaggio() {
		return this.idAnnuncio;
	}
	public void setVisualizzato(Boolean visualizzato) {
		this.visualizzato = visualizzato;
	}
	public Boolean getVisualizzato() {
		return this.visualizzato;
	}

	@Override
	public String toString() {
		return "Annuncio [idAnnuncio=" + idAnnuncio + ", medico=" + medico + ", pazienti=" + pazienti + ", titolo="
				+ titolo + ", testo=" + testo + ", allegato=" + allegato + ", data=" + data + ", visualizzato="
				+ visualizzato + "]";
	}
	
}