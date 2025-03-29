.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphSlot"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;-><init>(J)V

    return-void
.end method

.method public static native getFormat(J)I
.end method

.method public static native getGlyph(J)J
.end method

.method public static native getMetrics(J)J
.end method


# virtual methods
.method public a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;-><init>(J)V

    return-object v2

    .line 3
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Couldn\'t get glyph, FreeType error code: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .locals 3

    .line 1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;-><init>(J)V

    return-object v0
.end method
