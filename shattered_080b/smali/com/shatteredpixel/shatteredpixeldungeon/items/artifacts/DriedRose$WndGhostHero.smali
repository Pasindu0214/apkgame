.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "DriedRose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WndGhostHero"
.end annotation


# instance fields
.field public btnArmor:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

.field public btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "title"

    .line 6
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 v2, 0x42e80000    # 116.0f

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3, v3, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostStrength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 11
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    const-string v4, "desc"

    invoke-static {v1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 12
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const/16 v2, 0x74

    .line 13
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 14
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v0, v4

    invoke-virtual {v1, v3, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 15
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    const/high16 v3, 0x41a00000    # 20.0f

    .line 17
    iget v5, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 18
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v5, v1

    add-float/2addr v5, v4

    const/high16 v1, 0x42000000    # 32.0f

    .line 19
    invoke-virtual {v0, v3, v5, v1, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 20
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v0, :cond_0

    .line 21
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WEAPON_HOLDER:I

    invoke-direct {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    .line 23
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnArmor:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 26
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    const/high16 v5, 0x41400000    # 12.0f

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnWeapon:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 27
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->y:F

    .line 28
    invoke-virtual {v0, v3, v5, v1, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 29
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz p1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnArmor:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnArmor:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_HOLDER:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    .line 32
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 33
    :goto_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnArmor:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 34
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;->btnArmor:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {p0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
