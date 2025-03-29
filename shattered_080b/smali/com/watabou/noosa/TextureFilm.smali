.class public Lcom/watabou/noosa/TextureFilm;
.super Ljava/lang/Object;
.source "TextureFilm.java"


# static fields
.field public static final FULL:Lcom/watabou/utils/RectF;


# instance fields
.field public frames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/watabou/utils/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public texHeight:I

.field public texWidth:I

.field public texture:Lcom/watabou/gltextures/SmartTexture;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/watabou/noosa/TextureFilm;->FULL:Lcom/watabou/utils/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/watabou/noosa/TextureFilm;Ljava/lang/Object;II)V
    .locals 10

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    .line 20
    iget-object v0, p1, Lcom/watabou/noosa/TextureFilm;->texture:Lcom/watabou/gltextures/SmartTexture;

    iput-object v0, p0, Lcom/watabou/noosa/TextureFilm;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 21
    iget v0, p1, Lcom/watabou/noosa/TextureFilm;->texWidth:I

    iput v0, p0, Lcom/watabou/noosa/TextureFilm;->texWidth:I

    .line 22
    iget v0, p1, Lcom/watabou/noosa/TextureFilm;->texHeight:I

    iput v0, p0, Lcom/watabou/noosa/TextureFilm;->texHeight:I

    .line 23
    iget-object p1, p1, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/watabou/utils/RectF;

    int-to-float p2, p3

    .line 24
    iget p3, p0, Lcom/watabou/noosa/TextureFilm;->texWidth:I

    int-to-float p3, p3

    div-float p3, p2, p3

    int-to-float p4, p4

    .line 25
    iget v0, p0, Lcom/watabou/noosa/TextureFilm;->texHeight:I

    int-to-float v0, v0

    div-float v0, p4, v0

    .line 26
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/TextureFilm;->width(Lcom/watabou/utils/RectF;)F

    move-result v1

    div-float/2addr v1, p2

    float-to-int p2, v1

    .line 27
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result v1

    div-float/2addr v1, p4

    float-to-int p4, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 28
    new-instance v4, Lcom/watabou/utils/RectF;

    int-to-float v5, v3

    mul-float v5, v5, p3

    int-to-float v6, v2

    mul-float v6, v6, v0

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v7

    mul-float v8, v8, p3

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    mul-float v9, v9, v0

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    .line 29
    iget v5, p1, Lcom/watabou/utils/RectF;->left:F

    iget v6, p1, Lcom/watabou/utils/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Lcom/watabou/utils/RectF;->shift(FF)Lcom/watabou/utils/RectF;

    mul-int v5, v2, p2

    add-int/2addr v5, v3

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 31
    iget-object v5, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/TextureFilm;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 4
    iget v0, p1, Lcom/watabou/gltextures/SmartTexture;->width:I

    iput v0, p0, Lcom/watabou/noosa/TextureFilm;->texWidth:I

    .line 5
    iget p1, p1, Lcom/watabou/gltextures/SmartTexture;->height:I

    iput p1, p0, Lcom/watabou/noosa/TextureFilm;->texHeight:I

    .line 6
    sget-object p1, Lcom/watabou/noosa/TextureFilm;->FULL:Lcom/watabou/utils/RectF;

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 10

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    .line 10
    invoke-static {p1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/TextureFilm;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 11
    iget v0, p1, Lcom/watabou/gltextures/SmartTexture;->width:I

    iput v0, p0, Lcom/watabou/noosa/TextureFilm;->texWidth:I

    .line 12
    iget p1, p1, Lcom/watabou/gltextures/SmartTexture;->height:I

    iput p1, p0, Lcom/watabou/noosa/TextureFilm;->texHeight:I

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 13
    div-int/2addr v0, p2

    .line 14
    div-int/2addr p1, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    .line 15
    new-instance v4, Lcom/watabou/utils/RectF;

    int-to-float v5, v3

    mul-float v5, v5, v1

    int-to-float v6, p3

    mul-float v6, v6, v2

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v7

    mul-float v8, v8, v1

    add-int/lit8 v9, p3, 0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    mul-int v5, p3, v0

    add-int/2addr v5, v3

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17
    iget-object v5, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/watabou/utils/RectF;

    return-object p1
.end method

.method public height(Lcom/watabou/utils/RectF;)F
    .locals 1

    .line 1
    iget v0, p1, Lcom/watabou/utils/RectF;->bottom:F

    iget p1, p1, Lcom/watabou/utils/RectF;->top:F

    sub-float/2addr v0, p1

    .line 2
    iget p1, p0, Lcom/watabou/noosa/TextureFilm;->texHeight:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    return v0
.end method

.method public width(Lcom/watabou/utils/RectF;)F
    .locals 1

    .line 1
    iget v0, p1, Lcom/watabou/utils/RectF;->right:F

    iget p1, p1, Lcom/watabou/utils/RectF;->left:F

    sub-float/2addr v0, p1

    .line 2
    iget p1, p0, Lcom/watabou/noosa/TextureFilm;->texWidth:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    return v0
.end method
