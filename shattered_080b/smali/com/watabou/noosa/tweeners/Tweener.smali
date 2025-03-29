.class public abstract Lcom/watabou/noosa/tweeners/Tweener;
.super Lcom/watabou/noosa/Gizmo;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/tweeners/Tweener$Listener;
    }
.end annotation


# instance fields
.field public elapsed:F

.field public interval:F

.field public listener:Lcom/watabou/noosa/tweeners/Tweener$Listener;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Gizmo;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Gizmo;-><init>()V

    .line 2
    iput p2, p0, Lcom/watabou/noosa/tweeners/Tweener;->interval:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/watabou/noosa/tweeners/Tweener;->elapsed:F

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/Tweener;->listener:Lcom/watabou/noosa/tweeners/Tweener$Listener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/watabou/noosa/tweeners/Tweener$Listener;->onComplete(Lcom/watabou/noosa/tweeners/Tweener;)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/watabou/noosa/tweeners/Tweener;->elapsed:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/tweeners/Tweener;->onComplete()V

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    return-void

    .line 4
    :cond_0
    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/tweeners/Tweener;->elapsed:F

    .line 5
    iget v2, p0, Lcom/watabou/noosa/tweeners/Tweener;->interval:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 6
    iput v2, p0, Lcom/watabou/noosa/tweeners/Tweener;->elapsed:F

    .line 7
    :cond_1
    iget v0, p0, Lcom/watabou/noosa/tweeners/Tweener;->elapsed:F

    iget v1, p0, Lcom/watabou/noosa/tweeners/Tweener;->interval:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/tweeners/Tweener;->updateValues(F)V

    .line 9
    invoke-virtual {p0}, Lcom/watabou/noosa/tweeners/Tweener;->onComplete()V

    .line 10
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    goto :goto_0

    :cond_2
    div-float/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/tweeners/Tweener;->updateValues(F)V

    :goto_0
    return-void
.end method

.method public abstract updateValues(F)V
.end method
