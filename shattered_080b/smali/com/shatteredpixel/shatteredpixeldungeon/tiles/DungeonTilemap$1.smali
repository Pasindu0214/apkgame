.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap$1;
.super Lcom/watabou/noosa/tweeners/AlphaTweener;
.source "DungeonTilemap.java"


# instance fields
.field public final synthetic val$tile:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;Lcom/watabou/noosa/Visual;FFLcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap$1;->val$tile:Lcom/watabou/noosa/Image;

    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap$1;->val$tile:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    return-void
.end method
