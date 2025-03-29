.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Runestone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    const-string v0, "THROW"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract activate(I)V
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onThrow(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const-string v1, "THROW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;->activate(I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    :goto_1
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method
