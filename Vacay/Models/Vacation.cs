using System;

namespace Vaycay.Models
{
  public class Vacation
  {
    public string FamilyName { get; set; }
    public int GroupSize { get; set; }
    public string Destination { get; set; }
    public DateTime Departing { get; set; }
    public DateTime Returning { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
  }
}