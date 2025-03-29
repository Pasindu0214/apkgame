.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "NewPrisonBossLevel.java"


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;

    .line 3
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;

    .line 7
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    .line 8
    iget-object v2, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1$1;

    const/4 v4, 0x0

    .line 9
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->fadeDuration:F

    .line 10
    invoke-direct {v3, p0, v1, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
