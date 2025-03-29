.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1$1;
.super Lcom/watabou/noosa/tweeners/AlphaTweener;
.source "NewPrisonBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;->act()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;Lcom/watabou/noosa/Visual;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/tweeners/Tweener;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    .line 4
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 5
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    return-void
.end method
