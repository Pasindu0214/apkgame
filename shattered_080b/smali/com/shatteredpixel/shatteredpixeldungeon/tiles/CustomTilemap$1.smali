.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap$1;
.super Lcom/watabou/noosa/Tilemap;
.source "CustomTilemap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Ljava/lang/Object;Lcom/watabou/noosa/TextureFilm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/watabou/noosa/Tilemap;-><init>(Ljava/lang/Object;Lcom/watabou/noosa/TextureFilm;)V

    return-void
.end method


# virtual methods
.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    return-object v0
.end method
