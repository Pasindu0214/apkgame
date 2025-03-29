.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "NewDM300.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->dropRocks(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

.field public final synthetic val$rockCenter:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;->val$rockCenter:I

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 10

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;->val$rockCenter:I

    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;

    .line 4
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :cond_2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;->val$rockCenter:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    .line 7
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v3

    add-int/2addr v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_5

    .line 9
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 10
    :cond_4
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v9, v9, v6

    if-nez v9, :cond_3

    if-eq v6, v0, :cond_3

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$1;->val$rockCenter:I

    invoke-virtual {v8, v9, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v8

    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    if-nez v8, :cond_3

    .line 11
    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300$FallingRocks;

    invoke-static {v6, v5, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v8

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    goto :goto_2

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    return v5
.end method
