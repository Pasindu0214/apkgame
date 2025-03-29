.class public Lcom/watabou/noosa/ui/Component;
.super Lcom/watabou/noosa/Group;
.source "Component.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->createChildren()V

    return-void
.end method


# virtual methods
.method public bottom()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public createChildren()V
    .locals 0

    return-void
.end method

.method public inside(FF)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v1, p1

    cmpg-float p1, p2, v1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public layout()V
    .locals 0

    return-void
.end method

.method public right()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setPos(FF)Lcom/watabou/noosa/ui/Component;
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 2
    iput p2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->layout()V

    return-object p0
.end method

.method public setRect(FFFF)Lcom/watabou/noosa/ui/Component;
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 2
    iput p2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 3
    iput p3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 4
    iput p4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 5
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->layout()V

    return-object p0
.end method

.method public setSize(FF)Lcom/watabou/noosa/ui/Component;
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 2
    iput p2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->layout()V

    return-object p0
.end method
