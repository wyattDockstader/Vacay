using System;
using Vaycay.Models;

namespace Vacay.Models
{
  public class Trip : Vacation
  {
    public int Id { get; set; }
    public int TripId { get; set; }
    public string StartingLocation { get; set; }

  }
}