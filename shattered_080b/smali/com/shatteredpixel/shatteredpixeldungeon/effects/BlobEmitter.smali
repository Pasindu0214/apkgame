.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;
.super Lcom/watabou/noosa/particles/Emitter;
.source "BlobEmitter.java"


# instance fields
.field public blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

.field public bound:Lcom/watabou/utils/RectF;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    .line 2
    new-instance v0, Lcom/watabou/utils/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->bound:Lcom/watabou/utils/RectF;

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 4
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V

    return-void
.end method


# virtual methods
.method public emit(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-gtz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->setupArea()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    const/high16 v2, 0x41800000    # 16.0f

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->left:I

    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->right:I

    if-ge v0, v4, :cond_5

    .line 6
    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->blob:Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v5, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v3, v5, :cond_4

    .line 7
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v3

    add-int/2addr v6, v0

    .line 9
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    array-length v7, v5

    if-ge v6, v7, :cond_3

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    iget-boolean v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->alwaysVisible:Z

    if-eqz v4, :cond_3

    :cond_2
    aget v4, v1, v6

    if-lez v4, :cond_3

    int-to-float v4, v0

    .line 10
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->bound:Lcom/watabou/utils/RectF;

    iget v6, v5, Lcom/watabou/utils/RectF;->left:F

    iget v5, v5, Lcom/watabou/utils/RectF;->right:F

    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v5

    add-float/2addr v5, v4

    mul-float v5, v5, v2

    int-to-float v4, v3

    .line 11
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;->bound:Lcom/watabou/utils/RectF;

    iget v7, v6, Lcom/watabou/utils/RectF;->top:F

    iget v6, v6, Lcom/watabou/utils/RectF;->bottom:F

    invoke-static {v7, v6}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v6

    add-float/2addr v6, v4

    mul-float v6, v6, v2

    .line 12
    iget-object v4, p0, Lcom/watabou/noosa/particles/Emitter;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-virtual {v4, p0, p1, v5, v6}, Lcom/watabou/noosa/particles/Emitter$Factory;->emit(Lcom/watabou/noosa/particles/Emitter;IFF)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
