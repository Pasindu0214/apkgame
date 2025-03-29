.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;
.source "FloatingText.java"


# static fields
.field public static final stacks:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public key:I

.field public timeLeft:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->stacks:Lcom/watabou/utils/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    mul-int/lit8 v0, v0, 0x9

    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;-><init>(I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->key:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    return-void
.end method

.method public static push(Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->stacks:Lcom/watabou/utils/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->key:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->stacks:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->stacks:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v2, p1, v1}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v2, p0

    :goto_0
    if-ltz p1, :cond_1

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;

    .line 9
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v4, v5

    .line 10
    iget v6, v2, Lcom/watabou/noosa/ui/Component;->y:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 11
    iget v4, v3, Lcom/watabou/noosa/ui/Component;->x:F

    .line 12
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 13
    iget v6, v3, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v6

    sub-float/2addr v2, v5

    .line 14
    invoke-virtual {v3, v4, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 p1, p1, -0x1

    move-object v2, v3

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static show(FFILjava/lang/String;I)V
    .locals 7

    .line 2
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$2;-><init>(FFLjava/lang/String;II)V

    invoke-static {v6}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public static show(FFLjava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText$1;-><init>(FFLjava/lang/String;I)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->kill()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    return-void
.end method

.method public kill()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->key:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->stacks:Lcom/watabou/utils/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->stacks:Lcom/watabou/utils/SparseArray;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->key:I

    invoke-virtual {v2, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->key:I

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 7
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/watabou/noosa/Group;->kill()V

    return-void
.end method

.method public reset(FFLjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->zoom(F)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 5
    sget-object p3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    .line 6
    iget p4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p1, p4

    .line 7
    invoke-static {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result p1

    sget-object p3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    .line 8
    iget p4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr p2, p4

    .line 9
    invoke-static {p3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->timeLeft:F

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->timeLeft:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 3
    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->timeLeft:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->kill()V

    goto :goto_2

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    .line 5
    :goto_0
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->alpha(F)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 6
    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v1, v1, v0

    .line 7
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/noosa/RenderedText;

    .line 9
    iget v3, v2, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v3, v1

    iput v3, v2, Lcom/watabou/noosa/Visual;->y:F

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
