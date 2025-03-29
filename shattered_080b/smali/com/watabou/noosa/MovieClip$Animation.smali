.class public Lcom/watabou/noosa/MovieClip$Animation;
.super Ljava/lang/Object;
.source "MovieClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/noosa/MovieClip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Animation"
.end annotation


# instance fields
.field public delay:F

.field public frames:[Lcom/watabou/utils/RectF;

.field public looped:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/watabou/noosa/MovieClip$Animation;->delay:F

    .line 3
    iput-boolean p2, p0, Lcom/watabou/noosa/MovieClip$Animation;->looped:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/watabou/noosa/MovieClip$Animation;
    .locals 3

    .line 2
    new-instance v0, Lcom/watabou/noosa/MovieClip$Animation;

    iget v1, p0, Lcom/watabou/noosa/MovieClip$Animation;->delay:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-boolean v2, p0, Lcom/watabou/noosa/MovieClip$Animation;->looped:Z

    invoke-direct {v0, v1, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iget-object v1, p0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    .line 3
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    return-object v0
.end method

.method public varargs frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;
    .locals 3

    .line 1
    array-length v0, p2

    new-array v0, v0, [Lcom/watabou/utils/RectF;

    iput-object v0, p0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
