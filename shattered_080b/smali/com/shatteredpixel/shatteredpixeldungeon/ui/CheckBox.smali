.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "CheckBox.java"


# instance fields
.field public checked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->UNCHECKED:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public checked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHECKED:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->UNCHECKED:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    :goto_0
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    :cond_1
    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->layout()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 3
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 4
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 6
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    iget v3, v1, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    .line 7
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, v1, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 8
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/watabou/noosa/Visual;->y:F

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    return-void
.end method
