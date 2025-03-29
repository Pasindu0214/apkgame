.class public Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;
.super Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;
.source "Notes.java"


# instance fields
.field public key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    return-void
.end method


# virtual methods
.method public depth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    return v0
.end method

.method public desc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "key"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    const-string v1, "key"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method
