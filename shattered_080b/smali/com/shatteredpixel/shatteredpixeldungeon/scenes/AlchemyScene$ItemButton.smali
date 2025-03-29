.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;
.super Lcom/watabou/noosa/ui/Component;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemButton"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/NinePatch;

.field public item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->RED_BUTTON:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->bg:Lcom/watabou/noosa/NinePatch;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->bg:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v3, v2

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v2, v4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v5, v4

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method

.method public onClick()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
