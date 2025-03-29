.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a:I

    const/16 v1, 0x10

    .line 2
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->b:I

    const/4 v1, 0x0

    .line 3
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->c:I

    .line 4
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->d:I

    const/16 v2, 0x20

    .line 5
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->e:I

    .line 6
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->f:I

    const/high16 v2, 0x10000

    .line 7
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->g:I

    const/high16 v2, 0x20000

    .line 8
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->h:I

    .line 9
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->i:I

    .line 10
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->j:I

    .line 11
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->k:I

    const/4 v2, 0x1

    .line 12
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->l:I

    .line 13
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->m:I

    .line 14
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->n:I

    const/4 v0, 0x3

    .line 15
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->o:I

    return-void
.end method

.method public static a(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3f

    and-int/lit8 p0, p0, -0x40

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
    .locals 5

    .line 1
    new-instance v0, La/b/a/r/o;

    invoke-direct {v0}, La/b/a/r/o;-><init>()V

    const-string v1, "gdx-freetype"

    invoke-virtual {v0, v1}, La/b/a/r/o;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeTypeJni()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;-><init>(J)V

    return-object v2

    .line 4
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Couldn\'t initialize FreeType library, FreeType error code: "

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

.method public static native getLastErrorCode()I
.end method

.method public static native initFreeTypeJni()J
.end method
