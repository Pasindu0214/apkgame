.class public Lcom/watabou/noosa/Halo;
.super Lcom/watabou/noosa/Image;
.source "Halo.java"


# static fields
.field public static final CACHE_KEY:Ljava/lang/Object;


# instance fields
.field public brightness:F

.field public radius:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/watabou/noosa/Halo;

    sput-object v0, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const/high16 v0, 0x43000000    # 128.0f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/Halo;->radius:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Halo;->brightness:F

    .line 4
    sget-object v0, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, La/b/a/o/g;

    sget-object v1, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/16 v2, 0x101

    invoke-direct {v0, v2, v2, v1}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    const/16 v1, -0xf8

    .line 6
    iput v1, v0, La/b/a/o/g;->b:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    const/16 v5, 0x80

    const/16 v6, 0x80

    rsub-int v7, v1, 0x80

    .line 7
    iget-object v2, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v8, v0, La/b/a/o/g;->b:I

    .line 8
    iget-wide v3, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(JIIII)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    new-instance v2, Lcom/watabou/gltextures/SmartTexture;

    invoke-direct {v2, v0}, Lcom/watabou/gltextures/SmartTexture;-><init>(La/b/a/o/g;)V

    invoke-static {v1, v2}, Lcom/watabou/gltextures/TextureCache;->add(Ljava/lang/Object;Lcom/watabou/gltextures/SmartTexture;)V

    .line 10
    :cond_1
    sget-object v0, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(FIF)V
    .locals 10

    .line 11
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const/high16 v0, 0x43000000    # 128.0f

    .line 12
    iput v0, p0, Lcom/watabou/noosa/Halo;->radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/watabou/noosa/Halo;->brightness:F

    .line 14
    sget-object v1, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    invoke-static {v1}, Lcom/watabou/gltextures/TextureCache;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    new-instance v1, La/b/a/o/g;

    sget-object v2, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/16 v3, 0x101

    invoke-direct {v1, v3, v3, v2}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    const/16 v2, -0xf8

    .line 16
    iput v2, v1, La/b/a/o/g;->b:I

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    const/16 v6, 0x80

    const/16 v7, 0x80

    rsub-int v8, v2, 0x80

    .line 17
    iget-object v3, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v9, v1, La/b/a/o/g;->b:I

    .line 18
    iget-wide v4, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(JIIII)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 19
    :cond_0
    sget-object v2, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    new-instance v3, Lcom/watabou/gltextures/SmartTexture;

    invoke-direct {v3, v1}, Lcom/watabou/gltextures/SmartTexture;-><init>(La/b/a/o/g;)V

    invoke-static {v2, v3}, Lcom/watabou/gltextures/TextureCache;->add(Ljava/lang/Object;Lcom/watabou/gltextures/SmartTexture;)V

    .line 20
    :cond_1
    sget-object v1, Lcom/watabou/noosa/Halo;->CACHE_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 22
    iput p3, p0, Lcom/watabou/noosa/Halo;->brightness:F

    .line 23
    iput p3, p0, Lcom/watabou/noosa/Visual;->am:F

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/watabou/noosa/Visual;->aa:F

    .line 25
    iget-object p2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iput p1, p0, Lcom/watabou/noosa/Halo;->radius:F

    div-float/2addr p1, v0

    .line 26
    iput p1, p2, Lcom/watabou/utils/PointF;->x:F

    .line 27
    iput p1, p2, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public point(FF)Lcom/watabou/noosa/Halo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result p1

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    return-object p0
.end method
