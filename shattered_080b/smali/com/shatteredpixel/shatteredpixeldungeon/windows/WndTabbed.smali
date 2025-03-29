.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndTabbed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;
    }
.end annotation


# instance fields
.field public selected:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

.field public tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TAB_SET:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>(IIILcom/watabou/noosa/NinePatch;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 2
    iget v0, v0, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v0

    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    int-to-float v1, v1

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->select(Z)V

    .line 7
    invoke-super {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public layoutTabs()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v1}, Lcom/watabou/noosa/NinePatch;->marginHor()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    return-void

    :cond_1
    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    :cond_2
    :goto_0
    if-ne v6, v5, :cond_5

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x3

    if-gt v7, v8, :cond_4

    mul-int v8, v7, v4

    sub-int v8, v1, v8

    .line 4
    rem-int/2addr v8, v0

    if-nez v8, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v6, v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    mul-int v4, v4, v6

    sub-int/2addr v1, v4

    .line 5
    div-int/2addr v1, v0

    .line 6
    :goto_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    if-nez v2, :cond_6

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 9
    iget v4, v4, Lcom/watabou/noosa/NinePatch;->marginLeft:I

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    goto :goto_4

    .line 10
    :cond_6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v4

    int-to-float v5, v6

    add-float/2addr v4, v5

    :goto_4
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    int-to-float v5, v5

    .line 12
    invoke-virtual {v0, v4, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onClick(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->select(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)V

    return-void
.end method

.method public resize(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    .line 3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 4
    invoke-virtual {p2}, Lcom/watabou/noosa/NinePatch;->marginHor()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 5
    invoke-virtual {v1}, Lcom/watabou/noosa/NinePatch;->marginVer()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 7
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget v0, p2, Lcom/watabou/noosa/Visual;->width:F

    float-to-int v0, v0

    .line 8
    iget p2, p2, Lcom/watabou/noosa/NinePatch;->marginTop:I

    .line 9
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/watabou/noosa/Camera;->resize(II)V

    .line 10
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    sget p2, Lcom/watabou/noosa/Game;->width:I

    int-to-float p2, p2

    .line 11
    iget v0, p1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    iget v1, p1, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 12
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/watabou/noosa/Camera;->x:I

    .line 13
    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-float v0, v0

    .line 14
    iget v2, p1, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 15
    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/watabou/noosa/Camera;->y:I

    int-to-float v0, v0

    .line 16
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->yOffset:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Lcom/watabou/noosa/Camera;->y:I

    .line 17
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->shadow:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;

    int-to-float p2, p2

    div-float/2addr p2, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    .line 18
    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget v2, v2, Lcom/watabou/noosa/Visual;->height:F

    .line 19
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;->boxRect(FFFF)V

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 21
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 25
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public select(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->select(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)V

    return-void
.end method

.method public select(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->selected:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    if-eq p1, v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->selected:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->select(Z)V

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->select(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->selected:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    :cond_3
    return-void
.end method

.method public tabHeight()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
