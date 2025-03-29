.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Glyph"
.end annotation


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;-><init>(J)V

    return-void
.end method

.method public static native done(J)V
.end method

.method public static native getBitmap(J)J
.end method

.method public static native getLeft(J)I
.end method

.method public static native getTop(J)I
.end method

.method public static native strokeBorder(JJZ)J
.end method

.method public static native toBitmap(JI)J
.end method


# virtual methods
.method public a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b:Z

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;-><init>(J)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Glyph is not yet rendered"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 2
    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, La/b/a/r/d;

    const-string v0, "Couldn\'t render glyph, FreeType error code: "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft(J)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Glyph is not yet rendered"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop(J)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Glyph is not yet rendered"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
