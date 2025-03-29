.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell$1;
.super Ljava/lang/Object;
.source "InventorySpell.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/InventorySpell;->onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 8
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 9
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_read.mp3"

    .line 10
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 13
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    :goto_0
    return-void
.end method
