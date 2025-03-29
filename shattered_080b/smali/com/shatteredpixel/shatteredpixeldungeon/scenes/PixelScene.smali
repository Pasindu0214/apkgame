.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.super Lcom/watabou/noosa/Scene;
.source "PixelScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$PixelCamera;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;
    }
.end annotation


# static fields
.field public static defaultZoom:I

.field public static maxDefaultZoom:I

.field public static maxScreenZoom:I

.field public static maxZoom:F

.field public static minZoom:F

.field public static noFade:Z

.field public static pixelFont:Lcom/watabou/noosa/BitmapText$Font;

.field public static savedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;",
            ">;"
        }
    .end annotation
.end field

.field public static savedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;",
            ">;>;"
        }
    .end annotation
.end field

.field public static uiCamera:Lcom/watabou/noosa/Camera;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedWindows:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedClass:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->noFade:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Scene;-><init>()V

    return-void
.end method

.method public static align(F)F
    .locals 1

    .line 5
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v0, v0

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public static align(Lcom/watabou/noosa/Camera;F)F
    .locals 1

    .line 6
    iget v0, p0, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/watabou/noosa/Camera;->zoom:F

    div-float/2addr p1, p0

    return p1
.end method

.method public static align(Lcom/watabou/noosa/Visual;)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 8
    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public static align(Lcom/watabou/noosa/ui/Component;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v0

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method

.method public static renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p0

    return-object p0
.end method

.method public static renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;
    .locals 2

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    mul-int p1, p1, v1

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;-><init>(Ljava/lang/String;I)V

    .line 3
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->zoom(F)V

    return-object v0
.end method

.method public static showBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->current:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 4
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;-><init>(I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->current:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;

    .line 5
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object p0, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 6
    iget v1, p0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result p0

    iput p0, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iget-object p0, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v1, p0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v1, v1

    iget v2, v0, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result p0

    iput p0, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 8
    sget-object p0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object p0, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/watabou/noosa/Scene$1;

    invoke-direct {v0, v1}, Lcom/watabou/noosa/Scene$1;-><init>(Lcom/watabou/noosa/Scene;)V

    iput-object v0, v1, Lcom/watabou/noosa/Scene;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 2
    sget-object v2, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v2, v0}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    const/4 v2, 0x0

    .line 3
    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    .line 4
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43700000    # 240.0f

    const/high16 v3, 0x43200000    # 160.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43070000    # 135.0f

    const/high16 v3, 0x43610000    # 225.0f

    .line 5
    :goto_0
    sget v4, Lcom/watabou/noosa/Game;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sget v5, Lcom/watabou/noosa/Game;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxDefaultZoom:I

    .line 6
    sget v4, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sget v5, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxScreenZoom:I

    const/4 v4, 0x0

    const-string v5, "scale"

    .line 7
    invoke-static {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 8
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-double v5, v5

    .line 9
    sget v7, Lcom/watabou/noosa/Game;->density:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    const/4 v9, 0x1

    cmpg-double v10, v5, v7

    if-ltz v10, :cond_1

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxDefaultZoom:I

    if-le v5, v6, :cond_3

    .line 10
    :cond_1
    sget v5, Lcom/watabou/noosa/Game;->density:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    .line 11
    :goto_1
    sget v5, Lcom/watabou/noosa/Game;->width:I

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v5, v0

    if-ltz v5, :cond_2

    sget v5, Lcom/watabou/noosa/Game;->height:I

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_3

    :cond_2
    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    if-le v5, v9, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 12
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->minZoom:F

    .line 14
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxZoom:F

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$PixelCamera;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v3, v3

    invoke-direct {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$PixelCamera;-><init>(F)V

    invoke-static {v0}, Lcom/watabou/noosa/Camera;->reset(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 16
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v0, v0

    .line 17
    invoke-static {v0}, Lcom/watabou/noosa/Camera;->createFullscreen(F)Lcom/watabou/noosa/Camera;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    .line 18
    invoke-static {v0}, Lcom/watabou/noosa/Camera;->add(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    if-nez v0, :cond_15

    const-string v0, "pixel_font.png"

    .line 20
    sget-object v3, Lcom/watabou/utils/BitmapCache;->layers:Ljava/util/HashMap;

    const-string v5, "__default"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 21
    new-instance v3, Lcom/watabou/utils/BitmapCache$Layer;

    invoke-direct {v3, v2}, Lcom/watabou/utils/BitmapCache$Layer;-><init>(Lcom/watabou/utils/BitmapCache$1;)V

    .line 22
    sget-object v6, Lcom/watabou/utils/BitmapCache;->layers:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_4
    sget-object v3, Lcom/watabou/utils/BitmapCache;->layers:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/utils/BitmapCache$Layer;

    .line 24
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, La/b/a/o/g;

    goto :goto_3

    .line 26
    :cond_5
    :try_start_0
    new-instance v5, La/b/a/o/g;

    sget-object v6, La/b/a/e;->e:La/b/a/d;

    check-cast v6, La/b/a/m/a/i;

    .line 27
    new-instance v7, La/b/a/m/a/h;

    iget-object v6, v6, La/b/a/m/a/i;->c:Landroid/content/res/AssetManager;

    sget-object v8, La/b/a/d$a;->b:La/b/a/d$a;

    invoke-direct {v7, v6, v0, v8}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    .line 28
    invoke-direct {v5, v7}, La/b/a/o/g;-><init>(La/b/a/n/a;)V

    .line 29
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_3
    const-string v0, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    .line 31
    new-instance v3, Lcom/watabou/noosa/BitmapText$Font;

    invoke-static {v2}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/watabou/noosa/BitmapText$Font;-><init>(Lcom/watabou/gltextures/SmartTexture;)V

    .line 32
    iget-object v5, v2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 33
    iget v6, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 34
    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    int-to-float v7, v6

    div-float/2addr v7, v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_7

    .line 35
    invoke-virtual {v2, v8, v10}, La/b/a/o/g;->a(II)I

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    const/16 v10, 0x20

    .line 36
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    new-instance v12, Lcom/watabou/utils/RectF;

    int-to-float v13, v8

    int-to-float v14, v5

    div-float/2addr v13, v14

    const v15, 0x3c23d70a    # 0.01f

    sub-float v15, v7, v15

    const/4 v9, 0x0

    invoke-direct {v12, v9, v9, v13, v15}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    .line 37
    iget-object v9, v3, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_7
    const/16 v12, 0x60

    if-ge v9, v12, :cond_14

    .line 38
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_f

    :cond_9
    :goto_8
    if-lt v8, v5, :cond_a

    add-int/2addr v11, v6

    const/4 v8, 0x0

    :cond_a
    move v13, v11

    :goto_9
    add-int v15, v11, v6

    if-ge v13, v15, :cond_c

    .line 39
    invoke-virtual {v3, v2, v8, v13, v4}, Lcom/watabou/noosa/BitmapText$Font;->colorNotMatch(La/b/a/o/g;III)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v13, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_a
    if-nez v13, :cond_d

    add-int/lit8 v8, v8, 0x1

    :cond_d
    if-eqz v13, :cond_13

    move v13, v11

    const/4 v15, 0x1

    move v11, v8

    :goto_b
    add-int/2addr v8, v15

    if-lt v8, v5, :cond_f

    add-int/2addr v13, v6

    add-int v8, v13, v6

    .line 40
    iget-object v11, v2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 41
    iget v11, v11, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    if-lt v8, v11, :cond_e

    const/4 v8, 0x0

    const/4 v11, 0x0

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    const/4 v11, 0x0

    :cond_f
    move v15, v13

    :goto_c
    add-int v10, v13, v6

    if-ge v15, v10, :cond_11

    .line 42
    invoke-virtual {v3, v2, v8, v15, v4}, Lcom/watabou/noosa/BitmapText$Font;->colorNotMatch(La/b/a/o/g;III)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v15, 0x0

    goto :goto_d

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_11
    const/4 v15, 0x1

    :goto_d
    if-eqz v15, :cond_12

    .line 43
    :goto_e
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    new-instance v12, Lcom/watabou/utils/RectF;

    int-to-float v11, v11

    div-float/2addr v11, v14

    int-to-float v15, v13

    .line 44
    iget-object v4, v2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 45
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    int-to-float v4, v4

    div-float/2addr v15, v4

    int-to-float v4, v8

    div-float/2addr v4, v14

    add-float v1, v15, v7

    .line 46
    invoke-direct {v12, v11, v15, v4, v1}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    .line 47
    iget-object v1, v3, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/2addr v8, v1

    move v11, v13

    :goto_f
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/16 v10, 0x20

    move-object/from16 v1, p0

    goto :goto_7

    :cond_12
    const/16 v10, 0x20

    const/4 v15, 0x1

    move-object/from16 v1, p0

    goto :goto_b

    :cond_13
    move-object/from16 v1, p0

    goto :goto_8

    .line 48
    :cond_14
    iget-object v1, v3, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/watabou/utils/RectF;

    invoke-virtual {v3, v0}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result v0

    iput v0, v3, Lcom/watabou/noosa/BitmapText$Font;->baseLine:F

    .line 49
    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 50
    iput v0, v3, Lcom/watabou/noosa/BitmapText$Font;->baseLine:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    iput v0, v3, Lcom/watabou/noosa/BitmapText$Font;->tracking:F

    .line 52
    :cond_15
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_16

    const/16 v0, 0x100

    goto :goto_10

    :cond_16
    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    const/16 v0, 0x200

    goto :goto_10

    :cond_17
    const/16 v0, 0x400

    .line 53
    :goto_10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 54
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->KOREAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-eq v1, v2, :cond_18

    .line 55
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 56
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CHINESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-eq v1, v2, :cond_18

    .line 57
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 58
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->JAPANESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-ne v1, v2, :cond_19

    :cond_18
    mul-int/lit8 v0, v0, 0x2

    .line 59
    :cond_19
    sget-object v1, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    invoke-static {}, La/b/a/e;->systemFont()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/watabou/utils/PlatformSupport;->setupFontGenerators(IZ)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Scene;->destroy()V

    .line 2
    sget-object v0, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v0}, Lcom/watabou/utils/Signal;->removeAll()V

    return-void
.end method

.method public fadeIn()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->noFade:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->noFade:Z

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;

    invoke-direct {v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;-><init>(IZ)V

    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_0
    return-void
.end method

.method public saveWindows()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/watabou/noosa/Gizmo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/watabou/noosa/Gizmo;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 4
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    if-eqz v4, :cond_0

    .line 5
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->savedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
