.class public Lcom/watabou/noosa/BitmapText$Font;
.super Lcom/watabou/noosa/TextureFilm;
.source "BitmapText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/noosa/BitmapText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public baseLine:F

.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public tracking:F


# direct methods
.method public constructor <init>(Lcom/watabou/gltextures/SmartTexture;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/watabou/noosa/BitmapText$Font;->tracking:F

    .line 3
    iput-object p1, p0, Lcom/watabou/noosa/BitmapText$Font;->texture:Lcom/watabou/gltextures/SmartTexture;

    return-void
.end method


# virtual methods
.method public final colorNotMatch(La/b/a/o/g;III)Z
    .locals 2

    .line 1
    iget-object p1, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 2
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(JII)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3

    :cond_1
    if-eq p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    return p3
.end method

.method public get(C)Lcom/watabou/utils/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x3f

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    return-object p1
.end method
