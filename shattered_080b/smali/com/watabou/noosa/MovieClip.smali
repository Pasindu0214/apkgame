.class public Lcom/watabou/noosa/MovieClip;
.super Lcom/watabou/noosa/Image;
.source "MovieClip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/MovieClip$Listener;,
        Lcom/watabou/noosa/MovieClip$Animation;
    }
.end annotation


# instance fields
.field public curAnim:Lcom/watabou/noosa/MovieClip$Animation;

.field public curFrame:I

.field public finished:Z

.field public frameTimer:F

.field public listener:Lcom/watabou/noosa/MovieClip$Listener;

.field public paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized play(Lcom/watabou/noosa/MovieClip$Animation;Z)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_1

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-boolean p2, p2, Lcom/watabou/noosa/MovieClip$Animation;->looped:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/watabou/noosa/MovieClip;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 2
    :cond_0
    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    .line 5
    iput-boolean p2, p0, Lcom/watabou/noosa/MovieClip;->finished:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/watabou/noosa/MovieClip;->frameTimer:F

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public update()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/MovieClip;->updateAnimation()V

    :cond_0
    return-void
.end method

.method public declared-synchronized updateAnimation()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget v0, v0, Lcom/watabou/noosa/MovieClip$Animation;->delay:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-boolean v0, v0, Lcom/watabou/noosa/MovieClip$Animation;->looped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/watabou/noosa/MovieClip;->finished:Z

    if-nez v0, :cond_5

    .line 2
    :cond_0
    iget v0, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    .line 3
    iget v1, p0, Lcom/watabou/noosa/MovieClip;->frameTimer:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/watabou/noosa/MovieClip;->frameTimer:F

    .line 4
    :cond_1
    :goto_0
    iget v1, p0, Lcom/watabou/noosa/MovieClip;->frameTimer:F

    iget-object v2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget v2, v2, Lcom/watabou/noosa/MovieClip$Animation;->delay:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 5
    iget v1, p0, Lcom/watabou/noosa/MovieClip;->frameTimer:F

    iget-object v2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget v2, v2, Lcom/watabou/noosa/MovieClip$Animation;->delay:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/watabou/noosa/MovieClip;->frameTimer:F

    .line 6
    iget v1, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    iget-object v2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-object v2, v2, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-boolean v1, v1, Lcom/watabou/noosa/MovieClip$Animation;->looped:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    .line 9
    :cond_2
    iput-boolean v3, p0, Lcom/watabou/noosa/MovieClip;->finished:Z

    .line 10
    iget-object v1, p0, Lcom/watabou/noosa/MovieClip;->listener:Lcom/watabou/noosa/MovieClip$Listener;

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/watabou/noosa/MovieClip;->listener:Lcom/watabou/noosa/MovieClip$Listener;

    iget-object v2, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-interface {v1, v2}, Lcom/watabou/noosa/MovieClip$Listener;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 12
    iget-object v1, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_3
    :try_start_1
    iget v1, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    goto :goto_0

    .line 15
    :cond_4
    iget v1, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    if-eq v1, v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-object v0, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    iget v1, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
