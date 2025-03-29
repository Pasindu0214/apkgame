.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "NewCavesBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PylonEnergy"
.end annotation


# static fields
.field public static DIRECTED_SPARKS:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->DIRECTED_SPARKS:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v2, v4, :cond_2

    .line 3
    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 5
    aget v4, v3, v2

    if-nez v4, :cond_0

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    .line 6
    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    .line 7
    :cond_0
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v5, v4, v2

    add-int/2addr v3, v5

    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 8
    aget v3, v4, v2

    if-lez v3, :cond_1

    .line 9
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    if-nez v4, :cond_1

    .line 11
    sget-object v4, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "snd_lightning.mp3"

    .line 12
    invoke-virtual {v4, v6, v5, v5, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v4, 0x6

    const/16 v5, 0xc

    .line 13
    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 14
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 15
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v3, v4, :cond_1

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ondeath"

    .line 17
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fullyClear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    return-void
.end method

.method public tileDesc()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "energy_desc"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->DIRECTED_SPARKS:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
