.class public Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;
.super Ljava/lang/Object;
.source "Rankings.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public armorTier:I

.field public cause:Ljava/lang/Class;

.field public depth:I

.field public gameData:Lcom/watabou/utils/Bundle;

.field public gameID:Ljava/lang/String;

.field public heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public herolevel:I

.field public score:I

.field public win:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    const-string v0, "cause"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->cause:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->cause:Ljava/lang/Class;

    :goto_0
    const-string v0, "win"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->win:Z

    const-string v0, "score"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->score:I

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->restoreInBundle(Lcom/watabou/utils/Bundle;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const-string v0, "tier"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->armorTier:I

    const-string v0, "gameData"

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    :cond_1
    const-string v0, "gameID"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    :cond_3
    const-string v0, "depth"

    .line 11
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->depth:I

    const-string v0, "level"

    .line 12
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->herolevel:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->cause:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string v1, "cause"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->win:Z

    const-string v1, "win"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->score:I

    const-string v1, "score"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->armorTier:I

    const-string v1, "tier"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->herolevel:I

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 8
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->depth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "gameData"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    const-string v1, "gameID"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
