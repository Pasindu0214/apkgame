.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;
.super Lcom/watabou/noosa/tweeners/ScaleTweener;
.source "TerrainFeaturesTilemap.java"


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

.field public final synthetic val$plant:Lcom/watabou/noosa/Image;

.field public final synthetic val$pos:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;FLcom/watabou/noosa/Image;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;->val$plant:Lcom/watabou/noosa/Image;

    iput p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;->val$pos:I

    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/tweeners/ScaleTweener;-><init>(Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;->val$plant:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/TerrainFeaturesTilemap$1;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMapCell(I)V

    return-void
.end method
