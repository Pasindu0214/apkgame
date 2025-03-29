.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.source "WndHero.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;
    }
.end annotation


# instance fields
.field public buffs:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

.field public film:Lcom/watabou/noosa/TextureFilm;

.field public icons:Lcom/watabou/gltextures/SmartTexture;

.field public stats:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;-><init>()V

    const/16 v1, 0x73

    const/16 v2, 0x64

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->resize(II)V

    const-string v1, "large_buffs.png"

    .line 3
    invoke-static {v1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->icons:Lcom/watabou/gltextures/SmartTexture;

    .line 4
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->icons:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->film:Lcom/watabou/noosa/TextureFilm;

    .line 5
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->stats:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;

    .line 6
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    .line 8
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    const/high16 v2, 0x42e60000    # 115.0f

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3, v3, v2, v4}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    .line 11
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->buffList:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 12
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 13
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 14
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result v7

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_0

    .line 15
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;

    invoke-direct {v7, v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 16
    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->pos:F

    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v8}, Lcom/watabou/noosa/Visual;->height()F

    move-result v8

    invoke-virtual {v7, v3, v6, v2, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 17
    invoke-virtual {v4, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    iget-object v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->slots:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->pos:F

    const/high16 v8, 0x40000000    # 2.0f

    .line 20
    iget v7, v7, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v7, v8

    add-float/2addr v7, v6

    .line 21
    iput v7, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->pos:F

    goto :goto_0

    .line 22
    :cond_1
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->buffList:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 23
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->width:F

    .line 24
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->pos:F

    invoke-virtual {v4, v2, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 25
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->buffList:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 26
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 27
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->height:F

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 29
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$1;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "stats"

    .line 30
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 32
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$2;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "buffs"

    .line 33
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 35
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->layoutTabs()V

    .line 36
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->select(I)V

    return-void
.end method
