.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShockerAbility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerItem;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerBlob;
    }
.end annotation


# instance fields
.field public shockerPos:I

.field public shockingOrdinals:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->spreadblob()V

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "snd_lightning.mp3"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    add-int/lit8 v8, v7, -0x1

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v3

    add-int/2addr v7, v9

    .line 7
    invoke-direct {v6, v8, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(IILcom/watabou/utils/Callback;)V

    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    add-int/lit8 v8, v7, -0x1

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v8, v9

    add-int/2addr v7, v3

    sub-int/2addr v7, v9

    .line 10
    invoke-direct {v6, v8, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(IILcom/watabou/utils/Callback;)V

    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    invoke-virtual {v0, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 12
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 13
    invoke-virtual {v0, v4, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->spreadblob()V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 17
    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int v8, v6, v7

    add-int/2addr v6, v7

    .line 18
    invoke-direct {v1, v8, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(IILcom/watabou/utils/Callback;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    add-int/lit8 v7, v6, -0x1

    add-int/2addr v6, v3

    invoke-direct {v1, v7, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(IILcom/watabou/utils/Callback;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    invoke-virtual {v0, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    if-gt v0, v3, :cond_4

    .line 21
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 22
    invoke-virtual {v0, v4, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 23
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->spreadblob()V

    .line 25
    :goto_0
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v3
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "shocker_pos"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    const-string v0, "shocking_ordinals"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    return-void
.end method

.method public final spreadblob()V
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerBlob;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v2

    :goto_0
    sget-object v2, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    sget-object v4, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    aget v5, v4, v1

    add-int/2addr v5, v3

    aget-boolean v2, v2, v5

    if-nez v2, :cond_0

    .line 4
    aget v2, v4, v1

    add-int/2addr v3, v2

    const/4 v2, 0x2

    invoke-static {v3, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    const-string v1, "shocker_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockingOrdinals:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "shocking_ordinals"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method
