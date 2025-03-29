.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;
.super Lcom/watabou/noosa/ui/Button;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemButton"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/ColorBlock;

.field public item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const p2, 0x3e4ccccd    # 0.2f

    iput p2, p1, Lcom/watabou/noosa/Visual;->ra:F

    const p2, -0x42333333    # -0.1f

    .line 6
    iput p2, p1, Lcom/watabou/noosa/Visual;->ga:F

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const p2, 0x3dcccccd    # 0.1f

    iput p2, p1, Lcom/watabou/noosa/Visual;->ra:F

    .line 9
    iput p2, p1, Lcom/watabou/noosa/Visual;->ba:F

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x41e00000    # 28.0f

    const v2, -0x66aca9b3

    invoke-direct {v0, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x7

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    .line 6
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    .line 10
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    add-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 11
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    .line 12
    invoke-virtual {v0, v1, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 14
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    return-void
.end method

.method public onClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public onPointerDown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f333333    # 0.7f

    const-string v2, "snd_click.mp3"

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method
