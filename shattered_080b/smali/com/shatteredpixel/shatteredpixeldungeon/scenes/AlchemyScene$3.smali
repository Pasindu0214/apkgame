.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public arrow:Lcom/watabou/noosa/Image;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->ARROW:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->arrow:Lcom/watabou/noosa/Image;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public enable(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->arrow:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v0, v1}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->arrow:Lcom/watabou/noosa/Image;

    invoke-virtual {p1, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {p1, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->arrow:Lcom/watabou/noosa/Image;

    invoke-virtual {p1, v0, v0, v0}, Lcom/watabou/noosa/Visual;->color(FFF)V

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->arrow:Lcom/watabou/noosa/Image;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :goto_0
    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->arrow:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->combine()V

    return-void
.end method
