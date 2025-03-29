.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoPlant;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;
.source "WndInfoPlant.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->tile(II)Lcom/watabou/noosa/Image;

    move-result-object v0

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->plantName:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "desc"

    .line 2
    invoke-static {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
