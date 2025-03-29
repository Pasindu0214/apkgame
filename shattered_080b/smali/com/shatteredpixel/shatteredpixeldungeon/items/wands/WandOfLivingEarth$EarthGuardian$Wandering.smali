.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;
.source "WandOfLivingEarth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wandering"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    .line 2
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    .line 3
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$RockArmor;II)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->ATTRACT:Lcom/watabou/noosa/particles/Emitter$Factory;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    .line 5
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;->wandLevel:I

    .line 6
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, p2, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth$EarthGuardian;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;->act(ZZ)Z

    move-result p1

    return p1
.end method
