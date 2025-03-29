.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShockerItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->dropsDownHeap:Z

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    .line 4
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->TENGU_SHOCKER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 2

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "cant_pickup"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public emitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2
    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(FF)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->fillTarget:Z

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v3, 0x3dcccccd    # 0.1f

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0
.end method

.method public onThrow(I)V
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;

    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwingChar:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;

    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    const/4 p1, 0x0

    .line 4
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwingChar:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;

    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    :goto_0
    return-void
.end method
