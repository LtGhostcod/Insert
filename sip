public class sip {

    public static int search(int[] arr, int N, int x){
        for (int i = 0; i < N; i++){
            if (arr[i] == x){
                return i;
            }
        }
        return -1;
    }
    public static int insert(int[] arr, int n, int capacity, int key){
        if (n >= capacity){
            return n;
        }
        arr[n] = key;

        return (n+1);
    }
    public static void insertPos(int arr[], int n, int x, int pos){

        for (int i = n-1; i >= pos; i--)
            arr[i + 1] = arr[i];
        arr[pos] = x;

    }
    public static void main(String[] args) {
        int[] arr = new int[15];
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;
        arr[3] = 4;
        arr[4] = 5;
        arr[5] = 6;

        int capacity = 15;

        int N = arr.length;
        int key = 25;
        int n = 6;
        int x = 23, pos = 2;

        int result = search(arr, N, x);
        if (result == -1){
            System.out.println("Not found");
        }
        else{
            System.out.println("Found at " +result);
        }

        n = insert(arr, n, key, capacity);
        for (int i = 0; i < n; i++)
        System.out.println(arr[i]);

        System.out.println("Array before insertion");
        for (int i = 0 ; i < n; i++)
            System.out.println(arr[i] + " ");

        insertPos(arr, n, x, pos);
        n += 1;

        System.out.println("Array after insertion");
        for (int i = 0; i < n; i++)
            System.out.println(arr[i] + " ");
    }
}
