.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;
.source "WndTabbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconTab"
.end annotation


# instance fields
.field public defaultFrame:Lcom/watabou/utils/RectF;

.field public icon:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Lcom/watabou/noosa/Image;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 3
    new-instance p1, Lcom/watabou/utils/RectF;

    iget-object p2, p2, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    .line 4
    iget v0, p2, Lcom/watabou/utils/RectF;->left:F

    iget v1, p2, Lcom/watabou/utils/RectF;->top:F

    iget v2, p2, Lcom/watabou/utils/RectF;->right:F

    iget p2, p2, Lcom/watabou/utils/RectF;->bottom:F

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    .line 5
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->defaultFrame:Lcom/watabou/utils/RectF;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->defaultFrame:Lcom/watabou/utils/RectF;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    if-nez v3, :cond_0

    sub-float/2addr v2, v4

    .line 6
    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    .line 7
    new-instance v1, Lcom/watabou/utils/RectF;

    iget-object v0, v0, Lcom/watabou/noosa/Image;->frame:Lcom/watabou/utils/RectF;

    .line 8
    iget v2, v0, Lcom/watabou/utils/RectF;->left:F

    iget v4, v0, Lcom/watabou/utils/RectF;->top:F

    iget v5, v0, Lcom/watabou/utils/RectF;->right:F

    iget v0, v0, Lcom/watabou/utils/RectF;->bottom:F

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    .line 9
    iget v0, v1, Lcom/watabou/utils/RectF;->top:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v2, v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    iget v5, v4, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v2, v5

    iget-object v5, v4, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v5, v5, Lcom/watabou/gltextures/SmartTexture;->height:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    add-float/2addr v2, v0

    iput v2, v1, Lcom/watabou/utils/RectF;->top:F

    .line 10
    invoke-virtual {v4, v1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    :cond_0
    return-void
.end method

.method public select(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->select(Z)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;->icon:Lcom/watabou/noosa/Image;

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    :goto_0
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
