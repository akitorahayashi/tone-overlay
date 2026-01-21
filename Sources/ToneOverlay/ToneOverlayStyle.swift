import SwiftUI

public struct ToneOverlayStyle {
  public var desaturation: Double
  public var dim: Double
  public var contrast: Double
  public var tint: Color
  public var tintOpacity: Double
  public var veilOpacity: Double

  public init(
    desaturation: Double,
    dim: Double,
    contrast: Double,
    tint: Color = .black,
    tintOpacity: Double = 0.0,
    veilOpacity: Double = 0.0
  ) {
    self.desaturation = desaturation
    self.dim = dim
    self.contrast = contrast
    self.tint = tint
    self.tintOpacity = tintOpacity
    self.veilOpacity = veilOpacity
  }
}

public extension ToneOverlayStyle {
    static func tinted(
        color: Color,
        opacity: Double,
        desaturation: Double = 0.0,
    dim: Double = 0.0,
    contrast: Double = 1.0
  ) -> ToneOverlayStyle {
    ToneOverlayStyle(
      desaturation: desaturation,
      dim: dim,
      contrast: contrast,
      tint: color,
      tintOpacity: opacity,
      veilOpacity: 0.0
    )
  }
}
