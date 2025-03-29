.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;
.super Lcom/watabou/noosa/ui/Component;
.source "WndHero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuffsTab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;
    }
.end annotation


# instance fields
.field public buffList:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

.field public pos:F

.field public slots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->slots:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$1;

    new-instance v1, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v1}, Lcom/watabou/noosa/ui/Component;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;Lcom/watabou/noosa/ui/Component;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->buffList:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->buffList:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
