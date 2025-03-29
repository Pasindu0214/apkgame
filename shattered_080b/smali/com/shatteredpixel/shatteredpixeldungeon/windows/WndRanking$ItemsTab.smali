.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;
.super Lcom/watabou/noosa/Group;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemsTab"
.end annotation


# instance fields
.field public pos:F

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 4
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->addItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->addItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->addItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->addItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 13
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    .line 14
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v1, v1, v0

    const/high16 v2, 0x42e80000    # 116.0f

    const/high16 v3, 0x41e00000    # 28.0f

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    .line 16
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v4, v4, v0

    .line 17
    invoke-direct {v1, p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 18
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    invoke-virtual {v1, v4, v2, v3, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 19
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    .line 20
    :cond_4
    new-instance v1, Lcom/watabou/noosa/ColorBlock;

    const v4, -0x66aca9b3

    invoke-direct {v1, v3, v3, v4}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 21
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 22
    iput v2, v1, Lcom/watabou/noosa/Visual;->y:F

    .line 23
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 24
    :goto_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    const/high16 v2, 0x41e80000    # 29.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final addItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    invoke-direct {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x41e00000    # 28.0f

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    .line 7
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;->pos:F

    return-void
.end method
