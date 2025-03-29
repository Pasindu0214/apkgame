.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuickSlotButton"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/ColorBlock;

.field public item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

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

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;->bg:Lcom/watabou/noosa/ColorBlock;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->createChildren()V

    return-void
.end method

.method public layout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;->bg:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->layout()V

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

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public onPointerDown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;->bg:Lcom/watabou/noosa/ColorBlock;

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;->bg:Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method
