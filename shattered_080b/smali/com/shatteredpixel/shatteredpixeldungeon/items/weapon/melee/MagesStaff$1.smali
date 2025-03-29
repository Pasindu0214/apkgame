.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;
.super Ljava/lang/Object;
.source "MagesStaff.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_burning.mp3"

    .line 2
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x5

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->clearItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 11
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 12
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "imbue"

    .line 14
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 16
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->imbueWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method

.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 11

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "id_first"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "cursed"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 7
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v1, :cond_2

    .line 8
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->applyWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v3

    const/4 v4, 0x1

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 10
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    if-lez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 13
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    .line 14
    :goto_0
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;

    new-array v5, v4, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "warning"

    invoke-static {v0, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    new-array v9, v1, [Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v5, "yes"

    .line 16
    invoke-static {v0, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "no"

    .line 17
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    const-string v7, ""

    move-object v5, v3

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 18
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :cond_5
    :goto_1
    return-void
.end method
