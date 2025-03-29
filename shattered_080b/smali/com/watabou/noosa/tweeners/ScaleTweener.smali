.class public Lcom/watabou/noosa/tweeners/ScaleTweener;
.super Lcom/watabou/noosa/tweeners/Tweener;
.source "ScaleTweener.java"


# instance fields
.field public end:Lcom/watabou/utils/PointF;

.field public start:Lcom/watabou/utils/PointF;

.field public visual:Lcom/watabou/noosa/Visual;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/watabou/noosa/tweeners/Tweener;-><init>(Lcom/watabou/noosa/Gizmo;F)V

    .line 2
    iput-object p1, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->visual:Lcom/watabou/noosa/Visual;

    .line 3
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iput-object p1, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->start:Lcom/watabou/utils/PointF;

    .line 4
    iput-object p2, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->end:Lcom/watabou/utils/PointF;

    return-void
.end method


# virtual methods
.method public updateValues(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->visual:Lcom/watabou/noosa/Visual;

    iget-object v1, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->start:Lcom/watabou/utils/PointF;

    iget-object v2, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->end:Lcom/watabou/utils/PointF;

    invoke-static {v1, v2, p1}, Lcom/watabou/utils/PointF;->inter(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;F)Lcom/watabou/utils/PointF;

    move-result-object p1

    iput-object p1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    return-void
.end method
