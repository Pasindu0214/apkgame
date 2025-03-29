.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "ScrollOfEnchantment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;->onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$enchants:[Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;[Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iput-object p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;->val$enchants:[Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onSelect(I)V
    .locals 3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;->val$enchants:[Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "weapon"

    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;->access$000()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment;

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->readAnimation()V

    .line 5
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_read.mp3"

    .line 6
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 8
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfEnchantment$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_0
    return-void
.end method
