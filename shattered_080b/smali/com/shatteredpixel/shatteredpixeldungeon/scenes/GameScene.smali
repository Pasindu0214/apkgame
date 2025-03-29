.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "GameScene.java"


# static fields
.field public static actorThread:Ljava/lang/Thread;

.field public static cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

.field public static final defaultCellListener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public static scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;


# instance fields
.field public action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

.field public attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

.field public busy:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;

.field public counter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;

.field public customTiles:Lcom/watabou/noosa/Group;

.field public customWalls:Lcom/watabou/noosa/Group;

.field public effects:Lcom/watabou/noosa/Group;

.field public emitters:Lcom/watabou/noosa/Group;

.field public emoicons:Lcom/watabou/noosa/Group;

.field public floorEmitters:Lcom/watabou/noosa/Group;

.field public fog:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

.field public gases:Lcom/watabou/noosa/Group;

.field public healthIndicators:Lcom/watabou/noosa/Group;

.field public heaps:Lcom/watabou/noosa/Group;

.field public hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

.field public levelVisuals:Lcom/watabou/noosa/Group;

.field public log:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

.field public loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

.field public mobs:Lcom/watabou/noosa/Group;

.field public pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

.field public prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

.field public raisedTerrain:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;

.field public resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

.field public ripples:Lcom/watabou/noosa/Group;

.field public spells:Lcom/watabou/noosa/Group;

.field public statuses:Lcom/watabou/noosa/Group;

.field public tagAction:Z

.field public tagAttack:Z

.field public tagLoot:Z

.field public tagResume:Z

.field public terrain:Lcom/watabou/noosa/Group;

.field public terrainFeatures:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

.field public tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

.field public toDestroy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/noosa/Gizmo;",
            ">;"
        }
    .end annotation
.end field

.field public toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

.field public visualGrid:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;

.field public wallBlocking:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;

.field public walls:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;

.field public water:Lcom/watabou/noosa/SkinnedBlock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$5;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$5;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->defaultCellListener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toDestroy:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAttack:Z

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagLoot:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAction:Z

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagResume:Z

    return-void
.end method

.method public static add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->gases:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method

.method public static add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addMobSprite(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method

.method public static add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V
    .locals 1

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addMobSprite(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method

.method public static add(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Z)V
    .locals 1

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customWalls:Lcom/watabou/noosa/Group;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customTiles:Lcom/watabou/noosa/Group;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_0
    return-void
.end method

.method public static bossSlain()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->BOSS_SLAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;-><init>(Lcom/watabou/noosa/Image;)V

    const v1, 0xffffff

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x40a00000    # 5.0f

    .line 3
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->color:I

    .line 4
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->fadeTime:F

    .line 5
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->showTime:F

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    .line 7
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->time:F

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->showBanner(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;)V

    .line 9
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_boss.mp3"

    .line 10
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_0
    return-void
.end method

.method public static cancel()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cancelCellSelector()Z

    move-result v0

    return v0
.end method

.method public static cancelCellSelector()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->resetKeyHold()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->defaultCellListener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;->onSelect(Ljava/lang/Integer;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ready()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static discard(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->heaps:Lcom/watabou/noosa/Group;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DiscardedItemSprite;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DiscardedItemSprite;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 3
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->revive()V

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 5
    iput-object p0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 6
    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    .line 8
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    .line 9
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->heaps:Lcom/watabou/noosa/Group;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method

.method public static discoverTile(II)V
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v2, p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->getTileVisual(IIZ)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v6, Lcom/watabou/noosa/Image;

    iget-object v1, v2, Lcom/watabou/noosa/Tilemap;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 5
    invoke-direct {v6}, Lcom/watabou/noosa/Image;-><init>()V

    .line 6
    invoke-virtual {v6, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 7
    iget-object v1, v2, Lcom/watabou/noosa/Tilemap;->tileset:Lcom/watabou/noosa/TextureFilm;

    invoke-virtual {v2, p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->getTileVisual(IIZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 8
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 9
    iget-object p0, v2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    iget-object p0, v2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap$1;

    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    move-object v1, p1

    move-object v3, v6

    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;Lcom/watabou/noosa/Visual;FFLcom/watabou/noosa/Image;)V

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_1
    :goto_0
    return-void
.end method

.method public static emitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitters:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/particles/Emitter;

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static examineCell(Ljava/lang/Integer;)V
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz p0, :cond_8

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_8

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-gt v1, v3, :cond_8

    .line 5
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v3, v5, :cond_1

    .line 10
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v3, :cond_3

    .line 17
    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->plantName:Ljava/lang/String;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v3, :cond_5

    .line 24
    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    if-eqz v4, :cond_5

    .line 25
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 28
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoCell;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoCell;-><init>(I)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, v3, :cond_7

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->examineObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 31
    :cond_7
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$4;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "choose_examine"

    invoke-static {v0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "multiple_examine"

    .line 32
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static examineObject(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;-><init>()V

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob;

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;Z)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoPlant;

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoPlant;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 12
    :cond_4
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoTrap;

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoTrap;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 14
    :cond_5
    new-instance p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dont_know"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :goto_0
    return-void
.end method

.method public static flash(IZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    const/high16 v1, -0x1000000

    or-int/2addr p0, v1

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;

    invoke-direct {v1, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$Fader;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static layoutTags()V
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/b/a/e;->flipTags()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v0, v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 3
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v0, v2

    .line 4
    :goto_0
    invoke-static {}, La/b/a/e;->flipTags()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->log:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 6
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    .line 7
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    .line 8
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v2, v3

    .line 9
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v3, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 10
    iget v6, v6, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v3, v6

    .line 11
    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->log:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    .line 13
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v2, v3

    .line 14
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v3, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 15
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v3, v5

    .line 16
    invoke-virtual {v4, v1, v2, v3, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 17
    :goto_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    .line 18
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->y:F

    .line 19
    iget-boolean v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAttack:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 20
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 21
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v4

    .line 22
    invoke-virtual {v2, v0, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    cmpl-float v3, v0, v1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->flip(Z)V

    .line 24
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 25
    iget v3, v2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 26
    :cond_4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-boolean v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagLoot:Z

    if-eqz v4, :cond_6

    .line 27
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    .line 28
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v4

    .line 29
    invoke-virtual {v2, v0, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 30
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    cmpl-float v3, v0, v1

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->flip(Z)V

    .line 31
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    .line 32
    iget v3, v2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 33
    :cond_6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-boolean v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAction:Z

    if-eqz v4, :cond_8

    .line 34
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    .line 35
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v4

    .line 36
    invoke-virtual {v2, v0, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 37
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    cmpl-float v3, v0, v1

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->flip(Z)V

    .line 38
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    .line 39
    iget v3, v2, Lcom/watabou/noosa/ui/Component;->y:F

    .line 40
    :cond_8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-boolean v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagResume:Z

    if-eqz v4, :cond_a

    .line 41
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    .line 42
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v4

    .line 43
    invoke-virtual {v2, v0, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 44
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->flip(Z)V

    :cond_a
    return-void
.end method

.method public static pickUp(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->pickedUp:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 3
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 4
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 5
    invoke-virtual {v1, p0, p1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->reset(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;IFF)V

    :cond_0
    return-void
.end method

.method public static pickUpJournal(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->pickedUp:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    .line 3
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    .line 4
    iget v3, v2, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    .line 6
    iget v3, v0, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 7
    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;->reset(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;IFF)V

    :cond_0
    return-void
.end method

.method public static ready()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->defaultCellListener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->cancel()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    :cond_0
    return-void
.end method

.method public static resetMap()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->visualGrid:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 6
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrainFeatures:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 9
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->raisedTerrain:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 12
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->walls:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 15
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    .line 17
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    return-void
.end method

.method public static ripple(I)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripples:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    rem-int v2, p0, v1

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    div-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x10

    int-to-float p0, p0

    iput p0, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 8
    iget-object p0, v0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 9
    iput v1, p0, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v3, p0, Lcom/watabou/utils/PointF;->y:F

    .line 11
    iget-object p0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput v1, p0, Lcom/watabou/utils/PointF;->y:F

    const/high16 p0, 0x3f000000    # 0.5f

    .line 14
    iput p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;->time:F

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->listener:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;->prompt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cancelCellSelector()Z

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->getBag(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    .line 4
    invoke-static {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->getBag(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne p1, v0, :cond_2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->getBag(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    if-ne p1, v0, :cond_3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    .line 6
    invoke-static {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->getBag(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object p0

    .line 8
    :goto_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_4
    return-object p0
.end method

.method public static show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cancelCellSelector()Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method

.method public static updateFog()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->fog:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updateFog()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->wallBlocking:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->updateMap()V

    :cond_0
    return-void
.end method

.method public static updateFog(II)V
    .locals 1

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->fog:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;->updateFog(II)V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->wallBlocking:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;

    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->updateArea(II)V

    :cond_0
    return-void
.end method

.method public static updateKeyDisplay()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->updateKeyDisplay()V

    :cond_0
    return-void
.end method

.method public static updateMap()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMap()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->visualGrid:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->updateMap()V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrainFeatures:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMap()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->raisedTerrain:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMap()V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->walls:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMap()V

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    :cond_0
    return-void
.end method

.method public static updateMap(I)V
    .locals 1

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMapCell(I)V

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->visualGrid:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMapCell(I)V

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrainFeatures:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMapCell(I)V

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->raisedTerrain:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMapCell(I)V

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->walls:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMapCell(I)V

    const/4 v0, 0x1

    .line 14
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomTile(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customTiles:Lcom/watabou/noosa/Group;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public addCustomWall(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customWalls:Lcom/watabou/noosa/Group;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public final addHeapSprite(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->heaps:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->revive()V

    .line 3
    iput-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    .line 6
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->heaps:Lcom/watabou/noosa/Group;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public final addMobSprite(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->mobs:Lcom/watabou/noosa/Group;

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method

.method public create()V
    .locals 14

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez v1, :cond_0

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v2, 0x1

    const-string v3, "game.ogg"

    invoke-virtual {v1, v3, v2}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v3, "last_class"

    .line 5
    invoke-static {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    .line 6
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 7
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->minZoom:F

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    const/4 v5, 0x0

    const-string v6, "zoom"

    .line 8
    invoke-static {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    .line 9
    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->maxZoom:F

    invoke-static {v3, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Camera;->zoom(F)V

    .line 10
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    .line 11
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    .line 12
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$1;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 14
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/16 v6, 0x10

    mul-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    .line 15
    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    mul-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    .line 16
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->waterTex()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v4, v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;FFLjava/lang/Object;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->water:Lcom/watabou/noosa/SkinnedBlock;

    .line 17
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripples:Lcom/watabou/noosa/Group;

    .line 19
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    array-length v1, v1

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seedCurDepth()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->setupVariance(IJ)V

    .line 21
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    .line 22
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 23
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customTiles:Lcom/watabou/noosa/Group;

    .line 24
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 26
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addCustomTile(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;)V

    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->visualGrid:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;

    .line 28
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 29
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-direct {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;-><init>(Lcom/watabou/utils/SparseArray;Lcom/watabou/utils/SparseArray;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrainFeatures:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    .line 30
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->terrain:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 31
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->levelVisuals:Lcom/watabou/noosa/Group;

    .line 32
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->floorEmitters:Lcom/watabou/noosa/Group;

    .line 34
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->heaps:Lcom/watabou/noosa/Group;

    .line 36
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 37
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 38
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addHeapSprite(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    goto :goto_1

    .line 39
    :cond_2
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitters:Lcom/watabou/noosa/Group;

    .line 40
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->effects:Lcom/watabou/noosa/Group;

    .line 41
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->healthIndicators:Lcom/watabou/noosa/Group;

    .line 42
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emoicons:Lcom/watabou/noosa/Group;

    .line 43
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->mobs:Lcom/watabou/noosa/Group;

    .line 44
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 45
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    .line 46
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->place(I)V

    .line 47
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->updateArmor()V

    .line 48
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->mobs:Lcom/watabou/noosa/Group;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 49
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 50
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addMobSprite(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 51
    sget-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-eqz v4, :cond_3

    .line 52
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    goto :goto_2

    .line 53
    :cond_4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->raisedTerrain:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;

    .line 54
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 55
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->walls:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;

    .line 56
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 57
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customWalls:Lcom/watabou/noosa/Group;

    .line 58
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 59
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 60
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->addCustomWall(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;)V

    goto :goto_3

    .line 61
    :cond_5
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->wallBlocking:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;

    .line 62
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 63
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitters:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 64
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->effects:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 65
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->gases:Lcom/watabou/noosa/Group;

    .line 66
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 67
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 68
    iput-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    .line 69
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->gases:Lcom/watabou/noosa/Group;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    invoke-direct {v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    invoke-virtual {v4, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_4

    .line 70
    :cond_6
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 71
    iget v7, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 72
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 73
    invoke-direct {v1, v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;-><init>(II)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->fog:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/FogOfWar;

    .line 74
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 75
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->spells:Lcom/watabou/noosa/Group;

    .line 76
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 77
    new-instance v1, Lcom/watabou/noosa/Group;

    invoke-direct {v1}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->statuses:Lcom/watabou/noosa/Group;

    .line 78
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 79
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->healthIndicators:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 80
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;-><init>()V

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 81
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emoicons:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 82
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tiles:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    invoke-direct {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 83
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    .line 84
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 85
    iget v3, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 86
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 87
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    .line 88
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 89
    iget v8, v3, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v8, v8

    .line 90
    iget v9, v1, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v8, v9

    .line 91
    iget v3, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    invoke-virtual {v1, v7, v8, v3, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 92
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toolbar:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 93
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    .line 94
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 95
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 96
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    .line 97
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 98
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 99
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    .line 100
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 101
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 102
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    .line 103
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 104
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 105
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->log:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

    .line 106
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 107
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->newLine()V

    .line 108
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->log:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 109
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->layoutTags()V

    .line 110
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->busy:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;

    .line 111
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v3, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 112
    iput v3, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 113
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v8

    add-float/2addr v8, v3

    iput v8, v1, Lcom/watabou/noosa/Visual;->y:F

    .line 114
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->busy:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 115
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;

    const/16 v8, 0x12

    const/high16 v9, 0x40880000    # 4.25f

    invoke-direct {v1, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;-><init>(IF)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->counter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;

    const v8, 0x808080

    .line 116
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lightMode:Z

    .line 117
    invoke-virtual {v1, v8}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 118
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->counter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v8, v1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 119
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->busy:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BusyIndicator;

    invoke-virtual {v8}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v8

    .line 120
    invoke-virtual {v1, v8}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 121
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 122
    iput v7, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->duration:F

    iput v7, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->lifespan:F

    .line 123
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v1, :cond_9

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    goto/16 :goto_6

    .line 124
    :cond_7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    goto :goto_6

    .line 125
    :cond_8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 126
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/16 v6, 0x8

    const/high16 v10, 0x42000000    # 32.0f

    invoke-direct {v1, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    const v6, 0xffff66

    .line 127
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->lightMode:Z

    .line 128
    invoke-virtual {v1, v6}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 129
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v1, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;->show(Lcom/watabou/noosa/Visual;F)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    goto :goto_6

    .line 130
    :cond_9
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-eq v1, v2, :cond_e

    const/4 v10, 0x6

    if-eq v1, v10, :cond_d

    const/16 v10, 0xb

    if-eq v1, v10, :cond_c

    if-eq v1, v6, :cond_b

    const/16 v6, 0x15

    if-eq v1, v6, :cond_a

    goto :goto_5

    .line 131
    :cond_a
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->showChapter(I)V

    goto :goto_5

    .line 132
    :cond_b
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->showChapter(I)V

    goto :goto_5

    .line 133
    :cond_c
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->showChapter(I)V

    goto :goto_5

    .line 134
    :cond_d
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->showChapter(I)V

    goto :goto_5

    .line 135
    :cond_e
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;->showChapter(I)V

    .line 136
    :goto_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 137
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->NO_MONSTERS_SLAIN:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->completedWithNoKilling:Z

    if-eqz v1, :cond_f

    .line 138
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->NO_MONSTERS_SLAIN:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 139
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 141
    :cond_f
    :goto_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v1, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 143
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v10, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v10

    .line 144
    instance-of v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v11, :cond_10

    .line 145
    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    goto :goto_7

    .line 146
    :cond_10
    instance-of v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz v11, :cond_11

    .line 147
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    invoke-virtual {v11, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    goto :goto_7

    .line 148
    :cond_11
    instance-of v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;

    if-eqz v11, :cond_12

    .line 149
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;

    invoke-virtual {v6, v4, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;->shatter(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v6

    invoke-virtual {v11, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_7

    .line 150
    :cond_12
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v11, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_7

    .line 151
    :cond_13
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->droppedItems:Lcom/watabou/utils/SparseArray;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v1, v6}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_14
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v1, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    const/16 v6, 0x64

    .line 153
    :cond_15
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v10, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v10

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_16

    .line 154
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v11, v10}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_15

    .line 155
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 156
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v11, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v6

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_8

    .line 157
    :cond_17
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v10}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 158
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v10}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 159
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    .line 160
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->portedItems:Lcom/watabou/utils/SparseArray;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-virtual {v1, v6}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 161
    :cond_18
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    .line 162
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v6, 0x41800000    # 16.0f

    if-eqz v1, :cond_1a

    if-eq v1, v2, :cond_19

    if-eq v1, v7, :cond_1a

    const/4 v10, 0x5

    if-eq v1, v10, :cond_1a

    .line 163
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v6

    iget v6, v6, Lcom/watabou/utils/PointF;->x:F

    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v10}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v10

    iget v10, v10, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v1, v6, v10}, Lcom/watabou/noosa/Camera;->snapTo(FF)V

    goto :goto_9

    .line 164
    :cond_19
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v10}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v10

    iget v10, v10, Lcom/watabou/utils/PointF;->x:F

    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v11}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v11

    iget v11, v11, Lcom/watabou/utils/PointF;->y:F

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v12, v12

    sget-object v13, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v13, v13, Lcom/watabou/noosa/Camera;->zoom:F

    div-float/2addr v12, v13

    mul-float v12, v12, v6

    add-float/2addr v12, v11

    invoke-virtual {v1, v10, v12}, Lcom/watabou/noosa/Camera;->snapTo(FF)V

    goto :goto_9

    .line 165
    :cond_1a
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v10}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v10

    iget v10, v10, Lcom/watabou/utils/PointF;->x:F

    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v11}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v11

    iget v11, v11, Lcom/watabou/utils/PointF;->y:F

    sget v12, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v12, v12

    sget-object v13, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v13, v13, Lcom/watabou/noosa/Camera;->zoom:F

    div-float/2addr v12, v13

    mul-float v12, v12, v6

    sub-float/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/watabou/noosa/Camera;->snapTo(FF)V

    .line 166
    :goto_9
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v6

    const/high16 v10, 0x40200000    # 2.5f

    .line 167
    iput-object v6, v1, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    .line 168
    iput v10, v1, Lcom/watabou/noosa/Camera;->panIntensity:F

    .line 169
    iput-object v4, v1, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    .line 170
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    if-eq v1, v4, :cond_29

    .line 171
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    if-ne v1, v4, :cond_21

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->DESCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    if-eq v1, v4, :cond_1b

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->FALL:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    if-ne v1, v4, :cond_21

    :cond_1b
    new-array v1, v5, [Ljava/lang/Object;

    const-string v4, "descend"

    .line 172
    invoke-static {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 173
    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v4, "snd_descend.mp3"

    .line 175
    invoke-virtual {v1, v4, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 176
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 177
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v4, :cond_1c

    .line 178
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->sayAppeared()V

    goto :goto_a

    .line 179
    :cond_1d
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->spawnersAlive:I

    if-lez v1, :cond_23

    .line 180
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_23

    .line 181
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 182
    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DemonSpawner;

    if-eqz v6, :cond_1e

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DemonSpawner;

    iget-boolean v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DemonSpawner;->spawnRecorded:Z

    if-eqz v4, :cond_1e

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1f
    if-lez v1, :cond_23

    .line 183
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v1

    if-eqz v1, :cond_20

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "spawner_warn_final"

    .line 184
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    .line 185
    invoke-static {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_20
    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "spawner_warn"

    .line 186
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    .line 187
    invoke-static {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 188
    :cond_21
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RESET:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    if-ne v1, v3, :cond_22

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "warp"

    .line 189
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    .line 190
    invoke-static {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_22
    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "return"

    .line 191
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 192
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_23
    :goto_c
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_27

    if-eq v1, v7, :cond_26

    if-eq v1, v9, :cond_25

    if-eq v1, v8, :cond_24

    goto :goto_d

    :cond_24
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "dark"

    .line 194
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 195
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_25
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "grass"

    .line 196
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 197
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_26
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "water"

    .line 198
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 199
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_27
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "chasm"

    .line 200
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 201
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_d
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    if-eqz v2, :cond_28

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->secretDoors:I

    .line 203
    invoke-static {v9, v8}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    if-le v1, v2, :cond_28

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "secrets"

    .line 204
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 205
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 207
    :cond_29
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v3, 0x1388

    .line 6
    :try_start_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-static {v1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    :try_start_4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    .line 10
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 12
    :cond_1
    :try_start_6
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 13
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 14
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "timeout waiting for actor thread! "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v2

    .line 15
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception v2

    .line 16
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    :catchall_2
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 18
    :cond_2
    :goto_2
    sput-boolean v2, Lcom/watabou/noosa/Group;->freezeEmitters:Z

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    .line 21
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveGlobal()V

    .line 22
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->destroy()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;-><init>()V

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method

.method public declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveGlobal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized prompt(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toDestroy:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$3;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object p1, v0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget p1, p1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float p1, p1

    .line 8
    iget v1, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v1, v1, Lcom/watabou/noosa/Camera;->height:I

    add-int/lit8 v1, v1, -0x3c

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final showBanner(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iput-object v0, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 2
    iget v1, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v1, v1

    iget v2, p1, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result v0

    iput v0, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v1, v0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v1, v1

    iget v2, p1, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result v0

    iput v0, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public declared-synchronized update()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/watabou/noosa/Scene;->update()V

    .line 3
    sget-boolean v0, Lcom/watabou/noosa/Group;->freezeEmitters:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->water:Lcom/watabou/noosa/SkinnedBlock;

    const/4 v1, 0x0

    const/high16 v2, -0x3f600000    # -5.0f

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v3, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    .line 4
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 10
    :cond_4
    :goto_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$2;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 13
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    const-string v3, "SHPD Actor Thread"

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v3, "SHPD Render Thread"

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->keepActorThreadAlive:Z

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->actorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->counter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;

    .line 18
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v3, v4

    sub-float v3, v4, v3

    rem-float/2addr v3, v4

    .line 19
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->sweep:F

    .line 20
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CircleArc;->dirty:Z

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    if-nez v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->log:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->newLine()V

    .line 23
    :cond_7
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAttack:Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    iget-boolean v3, v3, Lcom/watabou/noosa/Gizmo;->active:Z

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagLoot:Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    iget-boolean v3, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAction:Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    iget-boolean v3, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagResume:Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    iget-boolean v3, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eq v0, v3, :cond_e

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAttack:Z

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagLoot:Z

    if-eqz v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAction:Z

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagResume:Z

    if-nez v0, :cond_d

    :cond_c
    const/4 v1, 0x1

    .line 25
    :cond_d
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/ui/AttackIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAttack:Z

    .line 26
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->loot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagLoot:Z

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagAction:Z

    .line 28
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resume:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ResumeIndicator;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->tagResume:Z

    if-eqz v1, :cond_e

    .line 29
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->layoutTags()V

    .line 30
    :cond_e
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cellSelector:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 31
    iget-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->enabled:Z

    if-eq v2, v1, :cond_f

    .line 32
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->enabled:Z

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toDestroy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/Gizmo;

    .line 34
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->destroy()V

    goto :goto_3

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->toDestroy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    monitor-exit p0

    return-void

    .line 37
    :cond_11
    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
