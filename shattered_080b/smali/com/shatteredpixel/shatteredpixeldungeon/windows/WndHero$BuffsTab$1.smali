.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.source "WndHero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;Lcom/watabou/noosa/ui/Component;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->slots:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;

    .line 5
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->slots:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/watabou/noosa/ui/Component;->inside(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-direct {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
