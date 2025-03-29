.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;


# direct methods
.method public constructor <init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;-><init>(J)V

    .line 2
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    return-void
.end method

.method public static native doneFace(J)V
.end method

.method public static native getCharIndex(JI)I
.end method

.method public static native getFaceFlags(J)I
.end method

.method public static native getGlyph(J)J
.end method

.method public static native getKerning(JIII)I
.end method

.method public static native getMaxAdvanceWidth(J)I
.end method

.method public static native getNumGlyphs(J)I
.end method

.method public static native getSize(J)J
.end method

.method public static native hasKerning(J)Z
.end method

.method public static native loadChar(JII)Z
.end method

.method public static native setPixelSizes(JII)Z
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(JI)I

    move-result p1

    return p1
.end method

.method public a(III)I
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(JIII)I

    move-result p1

    return p1
.end method

.method public a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    .locals 3

    .line 1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;-><init>(J)V

    return-object v0
.end method
