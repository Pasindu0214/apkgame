.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MassGraveRoom$Bones;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "MassGraveRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/MassGraveRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bones"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/prison_quests.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v1, v1, v2

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    if-ge v3, v4, :cond_0

    const/4 v4, 0x3

    aput v4, v2, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x7

    .line 4
    aput v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method

.method public desc(II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "desc"

    .line 1
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public image(II)Lcom/watabou/noosa/Image;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->image(II)Lcom/watabou/noosa/Image;

    move-result-object p1

    return-object p1
.end method

.method public name(II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "name"

    .line 1
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
