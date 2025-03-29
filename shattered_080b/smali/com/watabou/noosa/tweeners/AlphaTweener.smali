.class public Lcom/watabou/noosa/tweeners/AlphaTweener;
.super Lcom/watabou/noosa/tweeners/Tweener;
.source "AlphaTweener.java"


# instance fields
.field public delta:F

.field public image:Lcom/watabou/noosa/Visual;

.field public start:F


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Visual;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/watabou/noosa/tweeners/Tweener;-><init>(Lcom/watabou/noosa/Gizmo;F)V

    .line 2
    iput-object p1, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->image:Lcom/watabou/noosa/Visual;

    .line 3
    iget p3, p1, Lcom/watabou/noosa/Visual;->am:F

    iget p1, p1, Lcom/watabou/noosa/Visual;->aa:F

    add-float/2addr p3, p1

    .line 4
    iput p3, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->start:F

    sub-float/2addr p2, p3

    .line 5
    iput p2, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->delta:F

    return-void
.end method


# virtual methods
.method public updateValues(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->image:Lcom/watabou/noosa/Visual;

    iget v1, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->start:F

    iget v2, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->delta:F

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    return-void
.end method
