.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;
.source "WndInfoTrap.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;)V
    .locals 8

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;->tile(II)Lcom/watabou/noosa/Image;

    move-result-object v0

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->name:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoTrap;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "inactive"

    .line 3
    invoke-static {v5, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v4, "desc"

    invoke-static {p1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
