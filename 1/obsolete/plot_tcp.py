import sys
import matplotlib.pyplot as plt


def main():
    file = open(sys.argv[1], "r")
    counter_file = open("counter.txt", "r")

    lines = file.readlines()
    times = []
    seqs = []
    for line in lines:
        time, seq = tuple(line.split("\t"))
        seq = seq.strip()
        times.append(float(time))
        seqs.append(int(seq))

    counter = int(counter_file.read(1))
    counter_file.close()
    counter += 1
    counter_file = open("counter.txt", "w")
    counter_file.write(str(counter))
    counter_file.close()

    plot_results(seqs, times, str(counter))


def plot_results(iterations, entropies, file_name):
    plt.plot(iterations, entropies)
    plt.xlabel("Iterationen")
    plt.ylabel("Entropie")
    plt.savefig(file_name + ".pdf", format="pdf", bbox_inches="tight")
    plt.show()


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("<program> <file_name>")
        exit()
    else:
        main()
