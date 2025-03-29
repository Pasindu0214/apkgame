.class public Lcom/watabou/noosa/tweeners/PosTweener;
.super Lcom/watabou/noosa/tweeners/Tweener;
.source "PosTweener.java"


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
    iput-object p1, p0, Lcom/watabou/noosa/tweeners/PosTweener;->visual:Lcom/watabou/noosa/Visual;

    .line 3
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->point()Lcom/watabou/utils/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/tweeners/PosTweener;->start:Lcom/watabou/utils/PointF;

    .line 4
    iput-object p2, p0, Lcom/watabou/noosa/tweeners/PosTweener;->end:Lcom/watabou/utils/PointF;

    return-void
.end method


# virtual methods
.method public updateValues(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/PosTweener;->visual:Lcom/watabou/noosa/Visual;

    iget-object v1, p0, Lcom/watabou/noosa/tweeners/PosTweener;->start:Lcom/watabou/utils/PointF;

    iget-object v2, p0, Lcom/watabou/noosa/tweeners/PosTweener;->end:Lcom/watabou/utils/PointF;

    invoke-static {v1, v2, p1}, Lcom/watabou/utils/PointF;->inter(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;F)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    return-void
.end method
