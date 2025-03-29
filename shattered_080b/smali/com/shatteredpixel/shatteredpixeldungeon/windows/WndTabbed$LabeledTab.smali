.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;
.source "WndTabbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabeledTab"
.end annotation


# instance fields
.field public btLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->btLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    const/16 v0, 0x9

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->btLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->btLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 3
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    .line 4
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 5
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-static {v3, v5, v4, v2}, La/a/a/a/a;->a(FFFF)F

    move-result v2

    .line 6
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->btLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method

.method public select(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->select(Z)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->btLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->alpha(F)V

    return-void
.end method
